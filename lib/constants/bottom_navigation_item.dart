import 'package:flutter/material.dart';
import 'package:password_app_2/view/genre_order_page.dart';
import 'package:password_app_2/view/registration_order_page.dart';
import 'package:password_app_2/view/settings_page.dart';

const kBottomNavigationItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.access_time),
    label: '登録順',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.apps_outlined),
    label: 'ジャンル別',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings_outlined),
    label: '設定',
  ),
];

const kNavigationPageItems = [
  RegistrationOrderPage(),
  GenreOrderPage(),
  SettingsPage(),
];
