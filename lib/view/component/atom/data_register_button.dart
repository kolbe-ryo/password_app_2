import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/state/id_password_save_model.dart';
import 'package:password_app_2/state/id_password_save_model_list.dart';
import 'package:password_app_2/view_model/id_password_save_view_model.dart';

final savingProvider =
    StateNotifierProvider<IdPasswordSaveViewModel, IdPasswordSaveModelList>(
        (ref) => IdPasswordSaveViewModel());

final itemProvider =
    StateProvider((ref) => IdPasswordSaveModel(time: DateTime.now()));

class DataRegisterButton extends ConsumerWidget {
  const DataRegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: kSpacing * 2),
      child: TextButton(
        onPressed: () => {
          // TODO 入力が完了しているか確認してreadする
          ref
              .read(savingProvider.notifier)
              .update(ref.watch(itemProvider.state).state),
        },
        child: const Text(
          '登録する',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
