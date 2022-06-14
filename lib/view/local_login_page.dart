import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/util/local_auth.dart';
import 'package:password_app_2/view/component/molecules/app_dialog.dart';
import 'package:password_app_2/view/component/organisms/passcode_screen.dart';
import 'package:password_app_2/view/life_cycle_detection_page.dart';

class LocalLoginPage extends ConsumerWidget {
  const LocalLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppBarTitle),
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
                onPressed: () async => _pushByBiometrics(context),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
              ),
              const SizedBox(height: kSpacing),
              Text(
                '生体認証',
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
                onPressed: () {
                  final isInit = ref.watch(
                    passcodeProvider.select((state) => state.initPass),
                  );
                  _pushByPasscode(context, false, isInit);
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
              ),
              const SizedBox(height: kSpacing),
              Text(
                'パスコード',
                style: kSecondTextStyle(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _pushByBiometrics(BuildContext context) async {
    final isAuthenticated = await LocalAuth.authenticate();
    if (isAuthenticated) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: ((context) => const LifeCycleDetectionPage()),
        ),
      );
    }
  }

  Future<void> _pushByPasscode(
      BuildContext context, bool opaque, bool isInit) async {
    if (isInit) {
      await showDialog(
        context: context,
        builder: (context) => const AppDialog("パスコードを変更してください"),
      );
    }
    await Navigator.push(
      context,
      PageRouteBuilder(
        opaque: opaque,
        pageBuilder: (context, animation, secondaryAnimation) =>
            const PasscodeScreenPage(),
      ),
    );
  }
}
