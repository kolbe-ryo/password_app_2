// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../constants/style.dart';
import '../util/local_auth.dart';
import 'component/atom/logo_image.dart';
import 'component/molecules/app_dialog.dart';
import 'component/organisms/passcode_screen.dart';
import 'life_cycle_detection_page.dart';

// Re-Lock state for controlling life cycle state method(state.inactive)
final isReLockProvider = StateProvider<bool>(((ref) => false));

class LocalLoginPage extends ConsumerWidget {
  const LocalLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoImage(),
        centerTitle: true,
        elevation: 0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.fingerprint,
                    size: 50,
                  ),
                ),
                onPressed: () async => _pushByBiometrics(context: context, ref: ref),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
              ),
              const SizedBox(height: kSpacing),
              Text(
                AppLocalizations.of(context)!.biometrics,
                style: kSecondTextStyle(),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.apps,
                    size: 50,
                  ),
                ),
                onPressed: () async {
                  await ref.read(passcodeProvider.notifier).get();
                  final isInit = ref.watch(
                    passcodeProvider.select((state) => state.initPass),
                  );
                  _pushByPasscode(context: context, ref: ref, isInit: isInit);
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
              ),
              const SizedBox(height: kSpacing),
              Text(
                AppLocalizations.of(context)!.passcode,
                style: kSecondTextStyle(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _pushByBiometrics({required BuildContext context, required WidgetRef ref}) async {
    final isAuthenticated = await LocalAuth.authenticate();
    if (isAuthenticated) {
      ref.read(isReLockProvider.notifier).update((state) => true);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: ((context) => const LifeCycleDetectionPage()),
        ),
      );
    }
  }

  Future<void> _pushByPasscode({
    required BuildContext context,
    required WidgetRef ref,
    required bool isInit,
  }) async {
    if (isInit) {
      await showDialog(
        context: context,
        builder: (context) => AppDialog(
          AppLocalizations.of(context)!.initial_passcode_alert,
        ),
      );
    }
    await Navigator.push(
      context,
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) => const PasscodeScreenPage(),
      ),
    );
  }
}
