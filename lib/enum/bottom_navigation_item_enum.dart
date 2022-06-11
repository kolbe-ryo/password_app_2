import 'package:flutter/material.dart';
import 'package:password_app_2/view/genre_order_page.dart';
import 'package:password_app_2/view/registration_order_page.dart';
import 'package:password_app_2/view/settings_page.dart';

enum BottomNavigationBarItemEnum {
  registrationOrder,
  genreOrder,
  settings,
}

extension BottomNavigationBarItemEnumExt on BottomNavigationBarItemEnum {
  BottomNavigationBarItem get bottomNavigationBarItem {
    switch (this) {
      case BottomNavigationBarItemEnum.registrationOrder:
        return const BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: '登録順',
        );
      case BottomNavigationBarItemEnum.genreOrder:
        return const BottomNavigationBarItem(
          icon: Icon(Icons.apps_outlined),
          label: 'ジャンル別',
        );
      case BottomNavigationBarItemEnum.settings:
        return const BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: '設定',
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
