// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../../constants/style.dart';
import '../../../enum/genre_data_enum.dart';
import '../../../enum/id_password_manager_item_enum.dart';
import '../atom/selected_icon_button.dart';

class GenreSelectTile extends ConsumerWidget {
  const GenreSelectTile(this.idPasswordManagerItem, {Key? key}) : super(key: key);

  final IdPasswordManagerItems idPasswordManagerItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(top: kSpacing),
          title: Text(
            idPasswordManagerItem.itemModel.caption,
            style: kCaptionTextStyle,
          ),
        ),
        Row(
          children: GenreDataEnum.values
              .map(
                (value) => SelectedIconButton(value),
              )
              .toList(),
        ),
      ],
    );
  }
}
