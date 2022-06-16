// Flutter imports:
import 'package:flutter/cupertino.dart';

class AppDeleteDialog extends StatelessWidget {
  const AppDeleteDialog(this.message, {Key? key}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(message),
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
