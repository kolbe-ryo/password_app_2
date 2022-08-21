// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../../constants/style.dart';
import '../../id_password_manager_page.dart';
import '../../registration_order_page.dart';
import '../../selection_page.dart';
import '../molecules/app_delete_dialog.dart';

class DataDeleteButton extends ConsumerWidget {
  const DataDeleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: kSpacing * 2),
      child: TextButton(
        onPressed: () async {
          final isDelete = await showDialog(
            context: context,
            builder: (context) => AppDeleteDialog(
              AppLocalizations.of(context)!.delete_a_password_confirmation,
            ),
          );
          if (isDelete) {
            final idPasswordSaveModel = ref.watch(itemProvider.state).state;
            ref.read(savingProvider.notifier).delete(idPasswordSaveModel);
            await ref.read(savingProvider.notifier).save();
            ref.watch(isBottomNavigation.notifier).update((state) => true);
            Navigator.pop(context);
          }
        },
        child: Text(
          AppLocalizations.of(context)!.delete_button,
          style: const TextStyle(fontSize: 20, color: Colors.red),
        ),
      ),
    );
  }
}
