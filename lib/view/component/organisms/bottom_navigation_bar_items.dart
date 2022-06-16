// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../../enum/bottom_navigation_item_enum.dart';
import '../../selection_page.dart';

class BottomNavigationBarItems extends ConsumerWidget {
  const BottomNavigationBarItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      items: BottomNavigationBarItemEnum.values.map((item) => item.bottomNavigationBarItem).toList(),
      currentIndex: ref.watch(pageIndexProvider.state).state,
      onTap: (int index) => ref.read(pageIndexProvider.state).update((state) => index),
    );
  }
}
