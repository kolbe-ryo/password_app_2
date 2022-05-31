import 'package:flutter/material.dart';
import 'package:password_app_2/constants/id_password_manager_item.dart';
import 'package:password_app_2/constants/style.dart';

class InputTile extends StatelessWidget {
  const InputTile(
    this.idPasswordManagerItem, {
    Key? key,
  }) : super(key: key);

  final IdPasswordManagerItem idPasswordManagerItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(top: kSpacing),
          title: Text(
            idPasswordManagerItem.caption,
            style: kCaptionTextStyle,
          ),
        ),
        TextField(
          // TODO attributeを使用して、保存するstateを制御する
          decoration: InputDecoration(
            hintText: idPasswordManagerItem.hintText,
            hintStyle: kSecondTextStyle(),
          ),
        ),
      ],
    );
  }
}
