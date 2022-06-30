// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppDeleteDialog extends StatelessWidget {
  const AppDeleteDialog(this.message, {Key? key}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(message),
      actions: [
        CupertinoDialogAction(
          child: Text(AppLocalizations.of(context)!.confirm_delete),
          isDestructiveAction: true,
          onPressed: () => Navigator.pop(context, true),
        ),
        CupertinoDialogAction(
          child: Text(AppLocalizations.of(context)!.cancel),
          onPressed: () => Navigator.pop(context, false),
        ),
      ],
    );
  }
}
