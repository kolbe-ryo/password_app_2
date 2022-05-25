import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/bottom_navigation_item.dart';

// provider for page index
final pageIndexProvider = StateProvider<int>(((ref) => 0));

class SelectionPage extends ConsumerWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Password Service'),
      ),
      body: kNavigationPageItems[ref.watch(pageIndexProvider)],
      bottomNavigationBar: BottomNavigationBar(
        items: kBottomNavigationItems,
        currentIndex: ref.watch(pageIndexProvider),
        onTap: (int index) =>
            ref.read(pageIndexProvider.notifier).state = index,
      ),
    );
  }
}
