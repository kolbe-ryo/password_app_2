import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/id_password_manager_item_enum.dart';
import 'package:password_app_2/model/id_password_save_model.dart';
import 'package:password_app_2/view/component/atom/data_register_button.dart';
import 'package:password_app_2/view/component/molecules/genre_select_tile.dart';
import 'package:password_app_2/view/component/molecules/input_tile.dart';

final itemProvider =
    StateProvider((ref) => IdPasswordSaveModel(time: DateTime.now()));

class IdPasswordManagerPage extends StatelessWidget {
  const IdPasswordManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppBarTitle),
        iconTheme: const IconThemeData(color: kGreyColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kSpacing),
        child: Column(
          children: [
            InputTile(IdPasswordManagerItems.name.itemModel),
            InputTile(IdPasswordManagerItems.id.itemModel),
            InputTile(IdPasswordManagerItems.password.itemModel),
            GenreSelectTile(IdPasswordManagerItems.genre.itemModel),
            InputTile(IdPasswordManagerItems.memo.itemModel),
            InputTile(IdPasswordManagerItems.memo.itemModel),
            const DataRegisterButton(),
          ],
        ),
      ),
    );
  }
}
