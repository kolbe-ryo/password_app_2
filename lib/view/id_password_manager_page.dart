import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/const_letter.dart';
import 'package:password_app_2/constants/id_password_manager_item.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/view/component/atom/data_register_button.dart';
import 'package:password_app_2/view/component/molecules/genre_select_tile.dart';
import 'package:password_app_2/view/component/molecules/input_tile.dart';

class IdPasswordManagerPage extends ConsumerWidget {
  const IdPasswordManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppBarTitle),
        iconTheme: const IconThemeData(color: kGreyColor),
      ),
      body: Column(
        children: [
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: kSpacing),
            itemBuilder: (context, index) =>
                kIdPasswordManagerItem[index].isGenre
                    ? GenreSelectTile(kIdPasswordManagerItem[index])
                    : InputTile(kIdPasswordManagerItem[index]),
            itemCount: kIdPasswordManagerItem.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
          ),
          const DataRegisterButton()
        ],
      ),
    );
  }
}
