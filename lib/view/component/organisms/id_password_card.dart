import 'package:flutter/material.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/id_password_enum.dart';
import 'package:password_app_2/view/component/atom/title_text.dart';
import 'package:password_app_2/view/component/molecules/copy_button.dart';

class IdPasswordCard extends StatelessWidget {
  const IdPasswordCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TitleText(),
                Icon(Icons.money),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CopyButton(IdPassword.id.value),
                CopyButton(IdPassword.password.value),
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
