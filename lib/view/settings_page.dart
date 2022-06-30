// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'component/atom/logo_image.dart';
import 'component/molecules/app_delete_dialog.dart';
import 'component/molecules/setting_tile.dart';
import 'component/settings_page/change_passcord_page.dart';
import '../view_model/settings_page_view_model.dart';

final settingsProvider = Provider(((ref) => SettingsPageViewModel()));

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SettingTile(
          title: 'パスコード変更',
          icon: Icons.key,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChangePasscord(),
            ),
          ),
        ),
        SettingTile(
          title: 'パスワード削除',
          icon: Icons.delete,
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
          title: 'レビュー・不具合報告',
          icon: Icons.bug_report,
          onTap: () => {},
        ),
        SettingTile(
          title: 'ライセンス',
          icon: Icons.flutter_dash,
          onTap: () => showLicensePage(
            context: context,
            applicationIcon: const LogoImage(),
            applicationVersion: '1.0.0',
          ),
        ),
      ],
    );
  }
}
