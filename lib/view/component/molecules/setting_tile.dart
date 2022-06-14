import 'package:flutter/material.dart';
import 'package:password_app_2/constants/style.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.page,
  }) : super(key: key);

  final String title;
  final Icon icon;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.only(top: kSpacing),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        ),
        title: Text(
          title,
          style: kSecondTextStyle(),
        ),
        leading: icon,
        trailing: const Icon(Icons.keyboard_arrow_right),
      ),
      elevation: 0.5,
    );
  }
}
