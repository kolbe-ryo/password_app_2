// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'admob_reward_page_state.freezed.dart';

@freezed
class AdmobRewardPageState with _$AdmobRewardPageState {
  const factory AdmobRewardPageState({
    RewardedAd? rewardedAd,
    @Default(false) bool isLoaded,
    @Default(0) int rewardCount,
    @Default(false) bool isReward,
  }) = _AdmobRewardPageState;
}
