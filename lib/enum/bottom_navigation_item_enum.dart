// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Project imports:
import '../view/genre_order_page.dart';
import '../view/registration_order_page.dart';
import '../view/settings_page.dart';

enum BottomNavigationBarItemEnum {
  registrationOrder,
  genreOrder,
  settings,
}

extension BottomNavigationBarItemEnumExt on BottomNavigationBarItemEnum {
  BottomNavigationBarItem bottomNavigationBarItem(BuildContext context) {
    switch (this) {
      case BottomNavigationBarItemEnum.registrationOrder:
        return BottomNavigationBarItem(
          icon: const Icon(Icons.access_time),
          label: AppLocalizations.of(context)!.registration_order,
        );
      case BottomNavigationBarItemEnum.genreOrder:
        return BottomNavigationBarItem(
          icon: const Icon(Icons.apps_outlined),
          label: AppLocalizations.of(context)!.genre,
        );
      case BottomNavigationBarItemEnum.settings:
        return BottomNavigationBarItem(
          icon: const Icon(Icons.settings_outlined),
          label: AppLocalizations.of(context)!.settings,
        );
    }
  }

  Widget get page {
    switch (this) {
      case BottomNavigationBarItemEnum.registrationOrder:
        return const RegistrationOrderPage();
      case BottomNavigationBarItemEnum.genreOrder:
        return const GenreOrderPage();
      case BottomNavigationBarItemEnum.settings:
        return const SettingsPage();
    }
  }
}
