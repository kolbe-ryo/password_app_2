import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/bottom_navigation_item.dart';

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
          primarySwatch: Colors.blue,
        ),
        home: const MainPage(),
      ),
    );
  }
}

// provider for page index
final pageIndexProvider = StateProvider<int>(((ref) => 0));

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationItems,
        currentIndex: ref.watch(pageIndexProvider),
        onTap: (int index) =>
            ref.read(pageIndexProvider.notifier).state = index,
      ),
    );
  }
}
