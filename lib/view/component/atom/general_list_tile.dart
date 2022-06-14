import 'package:flutter/material.dart';
import 'package:password_app_2/constants/style.dart';

class GeneralListTile extends StatelessWidget {
  const GeneralListTile(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(top: kSpacing),
      title: Text(
        title,
        style: kCaptionTextStyle,
      ),
    );
  }
}
