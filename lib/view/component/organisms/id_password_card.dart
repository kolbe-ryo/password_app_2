import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/id_password_enum.dart';
import 'package:password_app_2/model/id_password_card_model.dart';
import 'package:password_app_2/view/component/atom/title_text.dart';
import 'package:password_app_2/view/component/molecules/copy_button.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSpacing),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TitleText(idPasswordCardModel.title),
                  ),
                  Icon(
                    idPasswordCardModel.iconData,
                    color: idPasswordCardModel.color,
                    size: 40,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CopyButton(
                  title: IdPassword.id.value,
                  idPass: idPasswordCardModel.id,
                  color: idPasswordCardModel.color,
                ),
                CopyButton(
                  title: IdPassword.password.value,
                  idPass: idPasswordCardModel.password,
                  color: idPasswordCardModel.color,
                ),
              ],
            ),
          ],
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: kGreyColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(kSpacing / 2)),
        ),
      ),
      onTap: () => {
        // id_password_manager_pageに遷移
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const IdPasswordManagerPage()),
          ),
        ),
      },
    );
  }
}
