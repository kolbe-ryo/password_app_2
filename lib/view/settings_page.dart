// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../view_model/settings_page_view_model.dart';
import 'component/atom/logo_image.dart';
import 'component/molecules/app_delete_dialog.dart';
import 'component/molecules/setting_tile.dart';
import 'component/settings_page/about_app_webview.dart';
import 'component/settings_page/change_passcord_page.dart';

final settingsProvider = Provider(((ref) => SettingsPageViewModel()));

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SettingTile(
          title: AppLocalizations.of(context)!.change_passcode,
          icon: Icons.key,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChangePasscord(),
            ),
          ),
        ),
        SettingTile(
          title: AppLocalizations.of(context)!.delete_password,
          icon: Icons.delete,
          onTap: () async {
            final isDelete = await showDialog(
              context: context,
              builder: (context) => AppDeleteDialog(
                AppLocalizations.of(context)!.delete_all_password_confirmation,
              ),
            );
            if (isDelete) {
              ref.read(settingsProvider).deleteAll();
            }
          },
        ),
        SettingTile(
          title: AppLocalizations.of(context)!.about_this_app,
          icon: Icons.app_registration,
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => const AboutAppWebview()),
            ),
          ),
        ),
        SettingTile(
          title: AppLocalizations.of(context)!.licenses,
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
