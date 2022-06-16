// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../../constants/style.dart';
import '../../../enum/genre_data_enum.dart';
import '../../id_password_manager_page.dart';
import '../../registration_order_page.dart';
import '../../selection_page.dart';
import '../molecules/app_dialog.dart';

class DataRegisterButton extends ConsumerWidget {
  const DataRegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genre = ref.watch(itemProvider.select((state) => state.genre));

    return Padding(
      padding: const EdgeInsets.only(top: kSpacing * 2),
      child: TextButton(
        onPressed: () async {
          // Validation
          final validateItem = checkNotEmpty(ref);

          if (validateItem) {
            // Save Item
            final isEditIdPassword = ref.watch(isEditIdPasswordProvider.state).state;
            final idPasswordSaveModel = ref.watch(itemProvider.state).state;
            (isEditIdPassword)
                ? ref.read(savingProvider.notifier).update(idPasswordSaveModel)
                : ref.read(savingProvider.notifier).addIdPasswordSaveModel(idPasswordSaveModel);

            ref.read(savingProvider.notifier).save();

            Navigator.pop(context);
          } else {
            showDialog(
              context: context,
              builder: (context) => const AppDialog("名称は必須です"),
            );
          }
        },
        child: Text(
          ref.watch(isEditIdPasswordProvider.state).state ? '変更する' : '登録する',
          style: TextStyle(fontSize: 20, color: genre.color),
        ),
      ),
    );
  }

  bool checkNotEmpty(WidgetRef ref) {
    final item = ref.watch(itemProvider.state).state;
    if (item.name.isEmpty) {
      return false;
    }
    return true;
  }
}
