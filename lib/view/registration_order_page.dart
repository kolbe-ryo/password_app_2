import 'package:flutter/material.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/genre_data_enum.dart';
import 'package:password_app_2/model/id_password_card_model.dart';
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
      itemBuilder: (context, index) => IdPasswordCard(
        IdPasswordCardModel(
          title: '楽天証券株式会社',
          iconData: GenreDataEnum.transportation.value,
          id: 'id',
          password: 'password',
          color: GenreDataEnum.money.color,
        ),
      ),
      itemCount: 10,
      padding: const EdgeInsets.all(kSpacing),
    );
  }
}
