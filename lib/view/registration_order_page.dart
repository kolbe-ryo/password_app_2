import 'package:flutter/material.dart';
import 'package:password_app_2/view/component/organisms/id_password_card.dart';

class RegistrationOrderPage extends StatelessWidget {
  const RegistrationOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.5,
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemBuilder: (context, index) => IdPasswordCard(),
      itemCount: 10,
      padding: const EdgeInsets.all(16.0),
    );
  }
}
