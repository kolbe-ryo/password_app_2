import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/enum/bottom_navigation_item_enum.dart';
import 'package:password_app_2/model/id_password_save_model.dart';
import 'package:password_app_2/view/component/organisms/bottom_navigation_bar_items.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';

// provider for page index
final pageIndexProvider = StateProvider<int>(((ref) => 0));

// provider for edit idpassword
final isEditIdPasswordProvider = StateProvider<bool>(((ref) => false));

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
      body: BottomNavigationBarItemEnum.values
          .map((item) => item.page)
          .toList()[pageIndex],
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            ref.read(isEditIdPasswordProvider.state).update((state) => false);
            ref.read(itemProvider.state).update(
                  (state) => IdPasswordSaveModel(time: DateTime.now()),
                );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const IdPasswordManagerPage(),
              ),
            );
          }),
      bottomNavigationBar: const BottomNavigationBarItems(),
    );
  }
}
