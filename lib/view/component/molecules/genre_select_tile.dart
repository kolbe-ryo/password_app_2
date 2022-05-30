import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/id_password_manager_item.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/genre_data_enum.dart';
import 'package:password_app_2/view/component/atom/selected_icon_button.dart';

class GenreSelectTile extends ConsumerWidget {
  const GenreSelectTile(this.idPasswordManagerItem, {Key? key})
      : super(key: key);

  final IdPasswordManagerItem idPasswordManagerItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(top: kSpacing),
          title: Text(
            idPasswordManagerItem.caption,
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
