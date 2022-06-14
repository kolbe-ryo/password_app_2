import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/view/local_login_page.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.white,
          elevation: 1.0,
          titleTextStyle: kHeadLineStyle,
        ),
        bottomNavigationBarTheme: BottomNavigationBarTheme.of(context).copyWith(
          // selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color.fromARGB(255, 184, 184, 184),
        ),
      ),
      home: const LocalLoginPage(),
    );
  }
}
