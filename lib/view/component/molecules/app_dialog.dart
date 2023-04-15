// Flutter imports:
import 'package:flutter/cupertino.dart';

class AppDialog extends StatelessWidget {
  const AppDialog(
    this.message, {
    this.isCancel = false,
    Key? key,
  }) : super(key: key);

  final String message;
  final bool isCancel;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(message),
      // content: const Text("パスワード名称を入力してください"),
      actions: [
        CupertinoDialogAction(
          child: const Text("OK"),
          onPressed: () => Navigator.pop(context, true),
        ),
        if (isCancel)
          CupertinoDialogAction(
            child: const Text("Cancel"),
            onPressed: () => Navigator.pop(context),
          ),
      ],
    );
  }
}
