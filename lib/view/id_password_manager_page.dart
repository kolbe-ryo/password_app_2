import 'package:flutter/material.dart';
import 'package:password_app_2/constants/const_letter.dart';

class IdPasswordManagerPage extends StatelessWidget {
  const IdPasswordManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(kAppBarTitle),
        ),
        body: Text('Manager'));
  }
}
