import 'package:flutter/material.dart';
import 'package:password_app_2/view/component/organisms/id_password_card.dart';

class RegistrationOrderPage extends StatelessWidget {
  const RegistrationOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IdPasswordCard(),
    );
  }
}
