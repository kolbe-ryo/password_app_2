import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/genre_data_enum.dart';
import 'package:password_app_2/view/component/atom/selected_icon_button.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';
import 'package:password_app_2/view/registration_order_page.dart';

class DataRegisterButton extends ConsumerWidget {
  const DataRegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genre = ref.watch(selectedGenreProvider.state).state;

    return Padding(
      padding: const EdgeInsets.only(top: kSpacing * 2),
      child: TextButton(
        onPressed: () async {
          // TODO 入力が完了しているか確認してreadする
          // ref
          //     .read(savingProvider.notifier)
          //     .update(ref.watch(itemProvider.state).state),
          print(genre);
          ref
              .read(savingProvider.notifier)
              .addIdPasswordSaveModel(ref.watch(itemProvider.state).state);
          ref.read(savingProvider.notifier).save();
          // ref.read(savingProvider.notifier).delete(savingItem);
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
