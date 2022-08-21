// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../../constants/style.dart';
import '../../../enum/id_password_manager_item_enum.dart';
import '../../id_password_manager_page.dart';
import '../../selection_page.dart';
import '../atom/general_list_tile.dart';
import 'input_tile_abstract.dart';

class InputTextMemo extends InputTileAbstract {
  const InputTextMemo({Key? key}) : super(key: key);

  @override
  Widget generalListTile(BuildContext context) {
    return GeneralListTile(IdPasswordManagerItems.memo.itemModel(context).caption);
  }

  @override
  Widget textField(BuildContext context, WidgetRef ref) {
    return const _TextField();
  }
}

class _TextField extends ConsumerWidget {
  const _TextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: IdPasswordManagerItems.memo.itemModel(context).hintText,
        hintStyle: kSecondTextStyle(),
      ),
      initialValue: ref.watch(itemProvider.select((value) => value.memo)),
      onTap: () => ref.watch(isBottomNavigation.notifier).update((state) => false),
      onChanged: (String text) => ref.read(itemProvider.state).update((state) => state.copyWith(memo: text)),
      style: kSecondTextStyle(color: Colors.blueGrey, size: 18.0),
    );
  }
}
