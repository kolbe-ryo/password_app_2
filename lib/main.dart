import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          primarySwatch: Colors.teal,
          appBarTheme: AppBarTheme.of(context).copyWith(
            backgroundColor: Colors.white,
            titleTextStyle: const TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        home: const SelectionPage(),
      ),
    );
  }
}
