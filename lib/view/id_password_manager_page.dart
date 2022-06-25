// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../constants/style.dart';
import '../enum/id_password_manager_item_enum.dart';
import '../model/id_password_save_model.dart';
import 'component/atom/data_delete_button.dart';
import 'component/atom/data_register_button.dart';
import 'component/atom/logo_image.dart';
import 'component/molecules/genre_select_tile.dart';
import 'component/molecules/input_tile.dart';
import 'selection_page.dart';

final itemProvider = StateProvider((ref) => IdPasswordSaveModel(time: DateTime.now()));

class IdPasswordManagerPage extends ConsumerWidget {
  const IdPasswordManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idPasswordSaveModel = ref.watch(itemProvider.state).state;
    return Scaffold(
      appBar: AppBar(
        title: const LogoImage(),
        centerTitle: true,
        elevation: 0,
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
                if (ref.watch(isEditIdPasswordProvider.state).state) const DataDeleteButton(),
              ],
            ),
            const SizedBox(height: kSpacing),
          ],
        ),
      ),
    );
  }
}
