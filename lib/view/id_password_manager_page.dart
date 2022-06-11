import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/id_password_manager_item_enum.dart';
import 'package:password_app_2/model/id_password_save_model.dart';
import 'package:password_app_2/view/component/atom/data_delete_button.dart';
import 'package:password_app_2/view/component/atom/data_register_button.dart';
import 'package:password_app_2/view/component/molecules/genre_select_tile.dart';
import 'package:password_app_2/view/component/molecules/input_tile.dart';
import 'package:password_app_2/view/selection_page.dart';

final itemProvider =
    StateProvider((ref) => IdPasswordSaveModel(time: DateTime.now()));

class IdPasswordManagerPage extends ConsumerWidget {
  const IdPasswordManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idPasswordSaveModel = ref.watch(itemProvider.state).state;
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppBarTitle),
        iconTheme: const IconThemeData(color: kGreyColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kSpacing),
        child: Column(
          children: [
            InputTile(
              idPasswordManagerItem: IdPasswordManagerItems.name,
              initialText: idPasswordSaveModel.name,
            ),
            InputTile(
              idPasswordManagerItem: IdPasswordManagerItems.id,
              initialText: idPasswordSaveModel.id,
            ),
            InputTile(
              idPasswordManagerItem: IdPasswordManagerItems.password,
              initialText: idPasswordSaveModel.password,
            ),
            const GenreSelectTile(IdPasswordManagerItems.genre),
            InputTile(
              idPasswordManagerItem: IdPasswordManagerItems.memo,
              initialText: idPasswordSaveModel.memo,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const DataRegisterButton(),
                if (ref.watch(isEditIdPasswordProvider.state).state)
                  const DataDeleteButton(),
              ],
            ),
            const SizedBox(height: kSpacing),
          ],
        ),
      ),
    );
  }
}
