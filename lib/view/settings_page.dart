import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/view/component/molecules/app_delete_dialog.dart';
import 'package:password_app_2/view/component/molecules/setting_tile.dart';
import 'package:password_app_2/view/component/settings_page/change_passcord_page.dart';
import 'package:password_app_2/view_model/settings_page_view_model.dart';

final settingsProvider = Provider(((ref) => SettingsPageViewModel()));

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          onTap: () async {
            final isDelete = await showDialog(
              context: context,
              builder: (context) => const AppDeleteDialog('パスワードが\n全件削除されます'),
            );
            if (isDelete) {
              ref.read(settingsProvider).deleteAll();
            }
          },
        ),
        SettingTile(
          title: 'レビューする',
          icon: const Icon(Icons.star),
          onTap: () => {print('something')},
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
