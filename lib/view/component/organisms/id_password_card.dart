import 'package:flutter/material.dart';
import 'package:password_app_2/enum/id_password_enum.dart';
import 'package:password_app_2/view/component/molecules/copy_button.dart';

class IdPasswordCard extends StatelessWidget {
  const IdPasswordCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          CopyButton(IdPassword.id.value),
          CopyButton(IdPassword.password.value),
        ],
      ),
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    );
  }
}
