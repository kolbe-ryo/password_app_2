import 'package:flutter/material.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/view/component/molecules/input_tile.dart';

class IdPasswordManagerPage extends StatelessWidget {
  const IdPasswordManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppBarTitle),
        iconTheme: const IconThemeData(color: kGreyColor),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: kSpacing),
        itemBuilder: (context, index) => InputTile(
          caption: '名前',
          hintText: '登録名',
        ),
      ),
    );
  }
}
