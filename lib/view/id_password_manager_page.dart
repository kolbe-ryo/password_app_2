import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/constants/id_password_manager_item.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/model/id_password_save_model.dart';
import 'package:password_app_2/state/id_password_save_model_list.dart';
import 'package:password_app_2/view/component/molecules/genre_select_tile.dart';
import 'package:password_app_2/view/component/molecules/input_tile.dart';
import 'package:password_app_2/view_model/id_password_save_view_model.dart';

final savingProvider =
    StateNotifierProvider<IdPasswordSaveViewModel, IdPasswordSaveModelList>(
        (ref) => IdPasswordSaveViewModel());

final itemProvider =
    StateProvider((ref) => IdPasswordSaveModel(time: DateTime.now()));

class IdPasswordManagerPage extends ConsumerWidget {
  const IdPasswordManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppBarTitle),
        iconTheme: const IconThemeData(color: kGreyColor),
      ),
      body: Column(
        children: [
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: kSpacing),
            itemBuilder: (context, index) =>
                kIdPasswordManagerItem[index].isGenre
                    ? GenreSelectTile(kIdPasswordManagerItem[index])
                    : InputTile(kIdPasswordManagerItem[index]),
            itemCount: kIdPasswordManagerItem.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
          Padding(
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
          )
        ],
      ),
    );
  }
}
