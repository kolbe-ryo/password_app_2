import 'package:flutter/material.dart';
import 'package:password_app_2/view/component/molecules/setting_tile.dart';
import 'package:password_app_2/view/component/settings_page/change_passcord_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SettingTile(
          title: 'パスコード変更',
          icon: Icon(Icons.key),
          page: ChangePasscord(),
        ),
        SettingTile(
          title: 'パスワード削除',
          icon: Icon(Icons.delete),
          page: ChangePasscord(),
        ),
        SettingTile(
          title: 'レビューする',
          icon: Icon(Icons.star),
          page: ChangePasscord(),
        ),
        SettingTile(
          title: '不具合報告',
          icon: Icon(Icons.bug_report),
          page: ChangePasscord(),
        ),
        SettingTile(
          title: 'ヘルプ',
          icon: Icon(Icons.help),
          page: ChangePasscord(),
        ),
        SettingTile(
          title: 'ライセンス',
          icon: Icon(Icons.flutter_dash),
          page: ChangePasscord(),
        ),
      ],
    );
  }
}
