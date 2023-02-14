// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:state_notifier/state_notifier.dart';

// Project imports:
import 'admob_reward_page_state.dart';

class AdmobRewardPageViewModel extends StateNotifier<AdmobRewardPageState> with LocatorMixin {
  AdmobRewardPageViewModel() : super(const AdmobRewardPageState());

  @override
  void initState() {
    loadRewardAd();
    super.initState();
  }

  @override
  void dispose() {
    state.rewardedAd?.dispose();
    state = state.copyWith(rewardedAd: null);
    super.dispose();
  }

  void loadRewardAd() {
    if (state.isLoaded) {
      return;
    }
    RewardedAd.load(
      adUnitId: _rewardAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (RewardedAd ad) {
          state = state.copyWith(
            rewardedAd: ad,
            isLoaded: true,
          );
          FullScreenContentCallback<RewardedAd> callback() {
            return FullScreenContentCallback(
              onAdShowedFullScreenContent: (RewardedAd ad) {},
              onAdDismissedFullScreenContent: (RewardedAd ad) {
                ad.dispose();
                state.rewardedAd?.dispose();
              },
              onAdFailedToShowFullScreenContent: (
                RewardedAd ad,
                AdError error,
              ) {
                ad.dispose();
                state.rewardedAd?.dispose();
              },
              onAdImpression: (RewardedAd ad) {},
            );
          }

          state.rewardedAd?.fullScreenContentCallback = callback();
        },
        onAdFailedToLoad: (LoadAdError error) {
          state = state.copyWith(isLoaded: false);
        },
      ),
    );
  }

  /// 引数は報酬を付与する処理
  Future<bool> showRewardAd(VoidCallback callback) async {
    try {
      await state.rewardedAd?.show(
        onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
          callback(); // リワードの視聴を完了した場合の報酬付与処理を呼び出す
          state = state.copyWith(
            isLoaded: false,
            rewardCount: reward.amount.toInt(),
          );
        },
      );
      return true;
    } on Exception catch (error) {
      return false;
    }
  }

  void decrementRewardCount() {
    // リワード報酬が0になったら、広告をロードしておく
    if (state.isLoaded) {
      return;
    }
    loadRewardAd();
    state = state.copyWith(rewardCount: 0);
  }

  void switchBoolIsAdmob(bool isReward) => state = state.copyWith(isReward: isReward);

  String get _rewardAdUnitId {
    String? rewardAdUnitId;
    if (Platform.isAndroid) {
      // Android のとき（テスト用広告）
      rewardAdUnitId = 'ca-app-pub-3940256099942544/5224354917';
    } else if (Platform.isIOS) {
      // iOSのとき
      rewardAdUnitId = isRelease ? 'ca-app-pub-4793779857582845/4098107622' : 'ca-app-pub-3940256099942544/1712485313';
    }
    return rewardAdUnitId ?? '';
  }
}
