import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:passcode_screen/passcode_screen.dart';
import 'package:password_app_2/model/local_passcode_model.dart';
import 'package:password_app_2/view/component/molecules/app_dialog.dart';
import 'package:password_app_2/view/life_cycle_detection_page.dart';
import 'package:password_app_2/view_model/passcode_screen_view_model.dart';

final passcodeProvider =
    StateNotifierProvider<PasscodeScreenViewModel, LocalPasscodeModel>(
        ((ref) => PasscodeScreenViewModel()));

class PasscodeScreenPage extends ConsumerStatefulWidget {
  const PasscodeScreenPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PasscodeScreenPageState();
}

class _PasscodeScreenPageState extends ConsumerState<PasscodeScreenPage> {
  final StreamController<bool> _verificationNotifier =
      StreamController<bool>.broadcast();

  @override
  Widget build(BuildContext context) {
    final initPass =
        ref.watch(passcodeProvider.select((state) => state.initPass));
    return PasscodeScreen(
      title: Text(
        initPass ? 'パスワードを入力してください\n初期設定は0000です' : 'パスワードを入力してください',
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.blue, fontSize: 20),
      ),
      passwordEnteredCallback: (enteredPass) =>
          _onPasscodeEntered(enteredPass, ref),
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
      passwordDigits:
          ref.watch(passcodeProvider.select((state) => state.length)),
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

  _onPasscodeEntered(String enteredPasscode, WidgetRef ref) {
    bool isValid = enteredPasscode ==
        ref.watch(passcodeProvider.select((state) => state.passcode));
    _verificationNotifier.add(isValid);
  }
}
