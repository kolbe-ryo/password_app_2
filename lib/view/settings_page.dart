import 'package:flutter/material.dart';
import 'package:password_app_2/view/component/molecules/setting_tile.dart';
import 'package:password_app_2/view/component/settings_page/change_passcord_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingTile(
          title: 'パスコード変更',
          icon: const Icon(Icons.key),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChangePasscord(),
            ),
          ),
        ),
        SettingTile(
          title: 'パスワード削除',
          icon: const Icon(Icons.delete),
          onTap: () => {},
        ),
        SettingTile(
          title: 'レビューする',
          icon: const Icon(Icons.star),
          onTap: () => {},
        ),
        SettingTile(
          title: '不具合報告',
          icon: const Icon(Icons.bug_report),
          onTap: () => {},
        ),
        SettingTile(
          title: 'ヘルプ',
          icon: const Icon(Icons.help),
          onTap: () => {},
        ),
        SettingTile(
          title: 'ライセンス',
          icon: const Icon(Icons.flutter_dash),
          onTap: () => {},
        ),
      ],
    );
  }
}
