import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/view/selection_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Password App',
        theme: ThemeData(
          primarySwatch: Colors.red,
          appBarTheme: AppBarTheme.of(context).copyWith(
            backgroundColor: Colors.white,
            elevation: 1.0,
            titleTextStyle: kHeadLineStyle,
          ),
        ),
        home: const SelectionPage(),
      ),
    );
  }
}
