// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:passcode_screen/passcode_screen.dart';

// Project imports:
import '../../../model/local_passcode_model.dart';
import '../../../view_model/passcode_view_model.dart';
import '../../life_cycle_detection_page.dart';

final passcodeProvider = StateNotifierProvider<PasscodeViewModel, LocalPasscodeModel>(((ref) => PasscodeViewModel()));

class PasscodeScreenPage extends ConsumerStatefulWidget {
  const PasscodeScreenPage(this.isReLock, {Key? key}) : super(key: key);

  final bool isReLock;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PasscodeScreenPageState();
}

class _PasscodeScreenPageState extends ConsumerState<PasscodeScreenPage> {
  final StreamController<bool> _verificationNotifier = StreamController<bool>.broadcast();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ref.read(passcodeProvider.notifier).get(),
      builder: (context, snapShot) {
        if (snapShot.connectionState == ConnectionState.done) {
          final initPass = ref.watch(passcodeProvider.select((state) => state.initPass));
          return PasscodeScreen(
              title: Text(
                initPass
                    ? AppLocalizations.of(context)!.initial_passcode_direction
                    : AppLocalizations.of(context)!.passcode_direction,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue, fontSize: 20),
              ),
              passwordEnteredCallback: (enteredPass) => _onPasscodeEntered(enteredPass, ref),
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
              passwordDigits: ref.watch(passcodeProvider.select((state) => state.length)),
              isValidCallback: () {
                // Switch ReLockState to true for next lock page
                ref.read(isReLockProvider.notifier).update((state) => true);

                // In case of no initial login, pop and get previous page
                if (widget.isReLock) {
                  Navigator.of(context).pop();
                } else {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: ((context) => const LifeCycleDetectionPage()),
                    ),
                  );
                }
              });
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  @override
  void dispose() {
    _verificationNotifier.close();
    super.dispose();
  }

  _onPasscodeEntered(String enteredPasscode, WidgetRef ref) {
    bool isValid = enteredPasscode == ref.watch(passcodeProvider.select((state) => state.passcode));
    _verificationNotifier.add(isValid);
  }
}
