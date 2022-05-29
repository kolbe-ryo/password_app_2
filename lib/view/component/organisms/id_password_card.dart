import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/id_password_enum.dart';
import 'package:password_app_2/model/id_password_card_model.dart';
import 'package:password_app_2/view/component/atom/title_text.dart';
import 'package:password_app_2/view/component/molecules/copy_button.dart';

class IdPasswordCard extends ConsumerWidget {
  const IdPasswordCard(this.idPasswordCardModel, {Key? key}) : super(key: key);

  final IdPasswordCardModel idPasswordCardModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TitleText(idPasswordCardModel.title),
                Icon(idPasswordCardModel.iconData),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CopyButton(
                  title: IdPassword.id.value,
                  idPass: idPasswordCardModel.id,
                ),
                CopyButton(
                  title: IdPassword.password.value,
                  idPass: idPasswordCardModel.password,
                ),
              ],
            ),
          ],
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: kGreyColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      onTap: () => {
        // id_password_manager_pageに遷移
      },
    );
  }
}
