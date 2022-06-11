import 'package:flutter/material.dart';
import 'package:password_app_2/view_model/settings_page_view_model.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: ElevatedButton(
        onPressed: () => SettingsPageViewModel().delete(),
        child: Text('削除'),
      )),
    );
  }
}
