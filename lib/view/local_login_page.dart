import 'package:flutter/material.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/util/local_auth.dart';
import 'package:password_app_2/view/component/organisms/passcode_screen.dart';
import 'package:password_app_2/view/life_cycle_detection_page.dart';

class LocalLoginPage extends StatelessWidget {
  const LocalLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onPressed: () async => _pushByPasscode(context, false),
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

  void _pushByPasscode(BuildContext context, bool opaque) =>
      Navigator.of(context).push(
        PageRouteBuilder(
          opaque: opaque,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const PasscodeScreenPage(),
        ),
      );
}
