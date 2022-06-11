import 'package:flutter/cupertino.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text("パスワードを削除しますか"),
      content: const Text("操作は元に戻せません"),
      actions: [
        CupertinoDialogAction(
          child: const Text("削除"),
          isDestructiveAction: true,
          onPressed: () => Navigator.pop(context, true),
        ),
        CupertinoDialogAction(
          child: const Text("キャンセル"),
          onPressed: () => Navigator.pop(context, false),
        ),
      ],
    );
  }
}
