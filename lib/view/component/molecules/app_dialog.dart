import 'package:flutter/cupertino.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text("名称は必須です"),
      content: const Text("パスワード名称を入力してください"),
      actions: [
        CupertinoDialogAction(
          child: const Text("OK"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
