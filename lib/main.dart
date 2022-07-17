// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// Project imports:
import 'constants/style.dart';
import 'view/local_login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.white,
          elevation: 1.0,
          titleTextStyle: kHeadLineStyle,
          iconTheme: const IconThemeData(color: kGreyColor),
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarTheme.of(context).copyWith(
          // selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color.fromARGB(255, 184, 184, 184),
        ),
      ),
      home: const LocalLoginPage(false),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja', ''),
        Locale('en', ''),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
