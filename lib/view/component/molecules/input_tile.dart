// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';

// Project imports:
import '../../../enum/id_password_manager_item_enum.dart';
import '../../id_password_manager_page.dart';
import '../atom/general_list_tile.dart';

class InputTile extends ConsumerWidget {
  const InputTile({
    required this.idPasswordManagerItem,
    required this.initialText,
    Key? key,
  }) : super(key: key);

  final IdPasswordManagerItems idPasswordManagerItem;
  final String initialText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        GeneralListTile(idPasswordManagerItem.itemModel(context).caption),
        TextFormField(
          decoration: InputDecoration(
            hintText: idPasswordManagerItem.itemModel(context).hintText,
            hintStyle: kSecondTextStyle(),
          ),
          initialValue: initialText,
          onChanged: (String text) => saveItemToIdPasswordModel(text, ref),
          style: kCaptionTextStyle,
        ),
      ],
    );
  }

  void saveItemToIdPasswordModel(String text, WidgetRef ref) {
    switch (idPasswordManagerItem) {
      case IdPasswordManagerItems.name:
        ref.read(itemProvider.state).update((state) => state.copyWith(name: text));
        break;
      case IdPasswordManagerItems.id:
        ref.read(itemProvider.state).update((state) => state.copyWith(id: text));
        break;
      case IdPasswordManagerItems.password:
        ref.read(itemProvider.state).update((state) => state.copyWith(password: text));
        break;
      case IdPasswordManagerItems.genre:
      case IdPasswordManagerItems.memo:
        ref.read(itemProvider.state).update((state) => state.copyWith(memo: text));
        break;
    }
  }
}
