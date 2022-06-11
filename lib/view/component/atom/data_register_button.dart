import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/genre_data_enum.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';
import 'package:password_app_2/view/registration_order_page.dart';
import 'package:password_app_2/view/selection_page.dart';

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
          final isEditIdPassword =
              ref.watch(isEditIdPasswordProvider.state).state;
          final idPasswordSaveModel = ref.watch(itemProvider.state).state;
          (isEditIdPassword)
              ? ref.read(savingProvider.notifier).update(idPasswordSaveModel)
              : ref
                  .read(savingProvider.notifier)
                  .addIdPasswordSaveModel(idPasswordSaveModel);

          ref.read(savingProvider.notifier).save();

          Navigator.pop(context);
        },
        child: Text(
          '登録する',
          style: TextStyle(fontSize: 20, color: genre.color),
        ),
      ),
    );
  }

  bool checkEmpty() {
    return false;
  }
}
