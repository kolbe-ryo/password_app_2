import 'package:flutter/material.dart';
import 'package:passcode_screen/passcode_screen.dart';
import 'package:passcode_screen/circle.dart';
import 'package:passcode_screen/keyboard.dart';

const storedPasscode = '123456';

class PasscodeScreenPage extends StatelessWidget {
  const PasscodeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PasscodeScreen(
      title: const Text(
        'Enter App Passcode',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
      circleUIConfig: const CircleUIConfig(
          borderColor: Colors.blue, fillColor: Colors.blue, circleSize: 30),
      keyboardUIConfig: const KeyboardUIConfig(
          digitBorderWidth: 2, primaryColor: Colors.blue),
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
      cancelCallback: _onPasscodeCancelled(context),
      passwordDigits: 6,
      bottomWidget: _buildPasscodeRestoreButton(context),
    );
  }

  _onPasscodeEntered(String enteredPasscode) {
    bool isValid = storedPasscode == enteredPasscode;
    _verificationNotifier.add(isValid);
    if (isValid) {
      setState(() {
        this.isAuthenticated = isValid;
      });
    }
  }

  _onPasscodeCancelled(BuildContext context) {
    Navigator.maybePop(context);
  }

  _buildPasscodeRestoreButton(BuildContext context) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0, top: 20.0),
          child: TextButton(
            child: Text(
              "Reset passcode",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            onPressed: _resetAppPassword(context),
            // splashColor: Colors.white.withOpacity(0.4),
            // highlightColor: Colors.white.withOpacity(0.2),
            // ),
          ),
        ),
      );

  _resetAppPassword(BuildContext context) {
    Navigator.maybePop(context).then((result) {
      if (!result) {
        return;
      }
      _showRestoreDialog(
        () {
          Navigator.maybePop(context);
          //TODO: Clear your stored passcode here
        },
        context,
      );
    });
  }

  _showRestoreDialog(VoidCallback onAccepted, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Reset passcode",
            style: const TextStyle(color: Colors.black87),
          ),
          content: Text(
            "Passcode reset is a non-secure operation!\n\nConsider removing all user data if this action performed.",
            style: const TextStyle(color: Colors.black87),
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            TextButton(
              child: Text(
                "Cancel",
                style: const TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.maybePop(context);
              },
            ),
            TextButton(
              child: Text(
                "I understand",
                style: const TextStyle(fontSize: 18),
              ),
              onPressed: onAccepted,
            ),
          ],
        );
      },
    );
  }
}
