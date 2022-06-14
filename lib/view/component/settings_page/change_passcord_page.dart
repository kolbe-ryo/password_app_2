import 'package:flutter/material.dart';
import 'package:password_app_2/constants/style.dart';

class ChangePasscord extends StatelessWidget {
  const ChangePasscord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('設定'),
        iconTheme: const IconThemeData(
          color: kGreyColor,
        ),
      ),
      body: Center(child: Text('設定')),
    );
  }
}
