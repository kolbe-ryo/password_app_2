import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/id_password_manager_item.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/id_password_manager_item_enum.dart';
import 'package:password_app_2/model/id_password_save_model.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';

final textProvider = StateProvider(((ref) => ''));

class InputTile extends ConsumerWidget {
  InputTile(
    this.idPasswordManagerItem, {
    Key? key,
  }) : super(key: key);

  final IdPasswordManagerItem idPasswordManagerItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO 属性によってtextfieldに代入する値を変更する
    final idPasswordSaveModel = ref.watch(itemProvider.state).state;
    final TextEditingController _textEditingController =
        TextEditingController(text: idPasswordSaveModel.name);
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(top: kSpacing),
          title: Text(
            idPasswordManagerItem.caption,
            style: kCaptionTextStyle,
          ),
        ),
        TextFormField(
          controller: _textEditingController,
          decoration: InputDecoration(
            hintText: idPasswordManagerItem.hintText,
            hintStyle: kSecondTextStyle(),
          ),
          onChanged: (String text) => {
            _textEditingController.text,
            saveItemToIdPasswordModel(text, ref),
          },
          // TODO Validatorを発動させる
          onSaved: (String? text) {},
          validator: (String? text) =>
              (text == null) ? 'Do not use the @ char.' : 'text',
        ),
      ],
    );
  }

  void saveItemToIdPasswordModel(String text, WidgetRef ref) {
    switch (idPasswordManagerItem.attribute) {
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
