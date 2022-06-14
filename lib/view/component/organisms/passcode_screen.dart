import 'dart:async';

import 'package:flutter/material.dart';
import 'package:passcode_screen/passcode_screen.dart';
import 'package:password_app_2/view/life_cycle_detection_page.dart';

const storedPasscode = '0000';

class PasscodeScreenPage extends StatefulWidget {
  const PasscodeScreenPage({Key? key}) : super(key: key);

  @override
  State<PasscodeScreenPage> createState() => _PasscodeScreenPageState();
}

class _PasscodeScreenPageState extends State<PasscodeScreenPage> {
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();

  @override
  Widget build(BuildContext context) {
    return PasscodeScreen(
      title: const Text(
        'Enter App Passcode',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
      passwordEnteredCallback: _onPasscodeEntered,
      cancelButton: const Text(
        'Cancel',
        style: TextStyle(fontSize: 16, color: Colors.white),
        semanticsLabel: 'Cancel',
      ),
      deleteButton: const Text(
        'Delete',
        style: TextStyle(fontSize: 16, color: Colors.white),
        semanticsLabel: 'Delete',
      ),
      shouldTriggerVerification: _verificationNotifier.stream,
      backgroundColor: Colors.black.withOpacity(0.8),
      cancelCallback: () => Navigator.pop(context, Icons.female_sharp),
      passwordDigits: 4,
      isValidCallback: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: ((context) => const LifeCycleDetectionPage()),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _verificationNotifier.close();
    super.dispose();
  }

  _onPasscodeEntered(String enteredPasscode) {
    bool isValid = storedPasscode == enteredPasscode;
    _verificationNotifier.add(isValid);
  }
}
