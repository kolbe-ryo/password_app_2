import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/view/component/molecules/app_delete_dialog.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';
import 'package:password_app_2/view/registration_order_page.dart';

class DataDeleteButton extends ConsumerWidget {
  const DataDeleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: kSpacing * 2),
      child: TextButton(
        onPressed: () async {
          final isDelete = await showDialog(
              context: context, builder: (context) => const AppDeleteDialog());
          if (isDelete) {
            final idPasswordSaveModel = ref.watch(itemProvider.state).state;
            ref.read(savingProvider.notifier).delete(idPasswordSaveModel);
            await ref.read(savingProvider.notifier).save();
            Navigator.pop(context);
          }
        },
        child: const Text(
          '削除する',
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
      ),
    );
  }
}