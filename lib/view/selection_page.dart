import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/bottom_navigation_item.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';

// provider for page index
final pageIndexProvider = StateProvider<int>(((ref) => 0));

class SelectionPage extends ConsumerWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageIndex = ref.watch(pageIndexProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(kAppBarTitle),
      ),
      body: Consumer(
        builder: (context, ref, child) => kNavigationPageItems[pageIndex],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const IdPasswordManagerPage(),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: kBottomNavigationItems,
        currentIndex: pageIndex,
        onTap: (int index) => ref.read(pageIndexProvider.state).state = index,
      ),
    );
  }
}
