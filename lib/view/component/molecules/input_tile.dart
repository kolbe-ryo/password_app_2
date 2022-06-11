import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/id_password_manager_item_enum.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';

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
        ListTile(
          contentPadding: const EdgeInsets.only(top: kSpacing),
          title: Text(
            idPasswordManagerItem.itemModel.caption,
            style: kCaptionTextStyle,
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: idPasswordManagerItem.itemModel.hintText,
            hintStyle: kSecondTextStyle(),
          ),
          initialValue: initialText,
          onChanged: (String text) => saveItemToIdPasswordModel(text, ref),
        ),
      ],
    );
  }

  void saveItemToIdPasswordModel(String text, WidgetRef ref) {
    switch (idPasswordManagerItem) {
      case IdPasswordManagerItems.name:
        ref
            .read(itemProvider.state)
            .update((state) => state.copyWith(name: text));
        break;
      case IdPasswordManagerItems.id:
        ref
            .read(itemProvider.state)
            .update((state) => state.copyWith(id: text));
        break;
      case IdPasswordManagerItems.password:
        ref
            .read(itemProvider.state)
            .update((state) => state.copyWith(password: text));
        break;
      case IdPasswordManagerItems.genre:
      case IdPasswordManagerItems.memo:
        ref
            .read(itemProvider.state)
            .update((state) => state.copyWith(memo: text));
        break;
    }
  }
}
