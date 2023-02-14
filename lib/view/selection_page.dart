// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/util/admob_reward/admob_reward_page_state.dart';
import 'package:password_app_2/util/admob_reward/admob_reward_page_view_model.dart';

// Project imports:
import '../constants/style.dart';
import '../enum/bottom_navigation_item_enum.dart';
import '../model/id_password_save_model.dart';
import '../util/admob.dart';
import '../view/component/atom/logo_image.dart';
import 'component/organisms/bottom_navigation_bar_items.dart';
import 'id_password_manager_page.dart';
import 'registration_order_page.dart';

// provider for page index
final pageIndexProvider = StateProvider<int>(((ref) => 0));

// provider for edit idpassword
final isEditIdPasswordProvider = StateProvider<bool>(((ref) => false));

// Bottom hide bool
final isBottomNavigation = StateProvider<bool>((ref) => true);

// Admob Reward
final admobRewardProvider = StateNotifierProvider<AdmobRewardPageViewModel, AdmobRewardPageState>(
  ((ref) => AdmobRewardPageViewModel()),
);

class SelectionPage extends ConsumerWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(pageIndexProvider);
    ref.watch(savingProvider.notifier).get();
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(kSpacing),
        child: Column(
          children: [
            const LogoImage(),
            Expanded(
              child: BottomNavigationBarItemEnum.values.map((item) => item.page).toList()[pageIndex],
            ),
          ],
        ),
      ),
      floatingActionButton: pageIndex != 2
          ? FloatingActionButton(
              child: const Icon(Icons.key),
              onPressed: () async {
                ref.read(isEditIdPasswordProvider.state).update((state) => false);
                ref.read(itemProvider.state).update(
                      (state) => IdPasswordSaveModel(
                        genre: ref.watch(itemProvider.select((state) => state.genre)),
                        time: DateTime.now(),
                      ),
                    );
                // Admob Reward
                final navigator = Navigator.of(context);
                final admobRewardState = ref.read(admobRewardProvider);
                final admobRewardViewModel = ref.read(admobRewardProvider.notifier);
                if (admobRewardState.isLoaded && admobRewardState.rewardCount == 0) {
                  // ライフサイクルでロックがかからないようにするフラグ
                  admobRewardViewModel.switchBoolIsAdmob(true);
                  await admobRewardViewModel.showRewardAd(() async {
                    await navigator.push(
                      MaterialPageRoute(
                        builder: (context) => const IdPasswordManagerPage(),
                      ),
                    );
                    ref.read(admobRewardProvider.notifier).switchBoolIsAdmob(false);
                  });
                } else {
                  admobRewardViewModel.decrementRewardCount();
                  navigator.push(
                    MaterialPageRoute(
                      builder: (context) => const IdPasswordManagerPage(),
                    ),
                  );
                }
              },
            )
          : null,
      bottomNavigationBar: ref.watch(isBottomNavigation)
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FutureBuilder(
                  future: Admob.getBannerWidget(context: context),
                  builder: (context, snapShot) {
                    if (snapShot.hasData) {
                      return snapShot.data as Widget;
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
                const BottomNavigationBarItems(),
              ],
            )
          : null,
    );
  }
}
