import 'package:flutter/material.dart';
import 'package:password_app_2/constants/style.dart';

class TitleText extends StatelessWidget {
  const TitleText(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: title.length > 1,
      child: Row(
        children: [
          Text(
            title.substring(0, 1),
            style: kFirstTextStyle,
          ),
          Text(
            title.substring(1),
            style: kFirstTextStyle,
          ),
        ],
      ),
      replacement: Text(
        title,
        style: kFirstTextStyle,
      ),
    );
  }
}
