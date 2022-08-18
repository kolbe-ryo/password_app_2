import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/id_password_manager_item_enum.dart';
import 'package:password_app_2/view/component/atom/general_list_tile.dart';
import 'package:password_app_2/view/component/input_text/input_tile_abstract.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';

class InputTextPassword extends InputTileAbstract {
  const InputTextPassword({Key? key}) : super(key: key);

  @override
  Widget generalListTile(BuildContext context) {
    return GeneralListTile(IdPasswordManagerItems.password.itemModel(context).caption);
  }

  @override
  Widget textField(BuildContext context, WidgetRef ref) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: IdPasswordManagerItems.password.itemModel(context).hintText,
        hintStyle: kSecondTextStyle(),
      ),
      initialValue: ref.watch(itemProvider.select((value) => value.password)),
      onChanged: (String text) => ref.read(itemProvider.state).update((state) => state.copyWith(password: text)),
      style: kSecondTextStyle(color: Colors.blueGrey, size: 18.0),
    );
  }
}
