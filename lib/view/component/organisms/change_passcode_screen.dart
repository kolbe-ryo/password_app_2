// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:passcode_screen/passcode_screen.dart';

// Project imports:
import '../molecules/app_dialog.dart';
import '../settings_page/change_passcord_page.dart';
import 'passcode_screen.dart';

class ChangePasscodeScreen extends ConsumerStatefulWidget {
  const ChangePasscodeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChangePasscodeScreenState();
}

class _ChangePasscodeScreenState extends ConsumerState<ChangePasscodeScreen> {
  final StreamController<bool> _verificationNotifier = StreamController<bool>.broadcast();

  @override
  Widget build(BuildContext context) {
    final length = ref.watch(passcodeLengthProvider.state).state;
    return PasscodeScreen(
        title: const Text(
          'パスコードを入力してください',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontSize: 20),
        ),
        passwordEnteredCallback: (enteredPass) => _onPasscodeEntered(enteredPass, length),
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
        passwordDigits: length,
        isValidCallback: () async {
          await showDialog(
            context: context,
            builder: (context) => const AppDialog("変更しました"),
          );
          // Navigator.pop(context);
        });
  }

  @override
  void dispose() {
    _verificationNotifier.close();
    super.dispose();
  }

  _onPasscodeEntered(String enteredPasscode, int length) {
    bool isValid = enteredPasscode.length == length;
    _verificationNotifier.add(isValid);
    if (isValid) {
      ref.read(passcodeProvider.notifier).changePasscode(length, enteredPasscode);
    }
  }
}
