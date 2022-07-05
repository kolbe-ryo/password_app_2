// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../constants/style.dart';
import '../enum/genre_data_enum.dart';
import 'component/atom/selected_icon_button.dart';
import 'component/organisms/gridview_items.dart';
import 'id_password_manager_page.dart';
import 'registration_order_page.dart';

class GenreOrderPage extends ConsumerWidget {
  const GenreOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectingGenre = ref.watch(itemProvider.select((value) => value.genre));
    final idPasswordSaveModels = ref.watch(
      savingProvider.select(
        (model) => model.modelList.where((element) => element.genre == selectingGenre).toList(),
      ),
    );
    return Column(
      children: [
        Wrap(
          children: GenreDataEnum.values
              .map(
                (value) => SelectedIconButton(value),
              )
              .toList(),
        ),
        const SizedBox(height: kSpacing),
        Expanded(child: GridviewItems(idPasswordSaveModels)),
      ],
    );
  }
}
