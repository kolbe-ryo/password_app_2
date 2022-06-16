// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../../constants/style.dart';
import '../../../enum/genre_data_enum.dart';
import '../../id_password_manager_page.dart';

class SelectedIconButton extends ConsumerWidget {
  const SelectedIconButton(this.genreData, {Key? key}) : super(key: key);

  final GenreDataEnum genreData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedGenre = ref.watch(itemProvider.select((state) => state.genre));
    return Column(
      children: [
        IconButton(
          onPressed: () {
            ref.read(itemProvider.state).update((state) => state.copyWith(genre: genreData));
          },
          icon: Icon(
            genreData.icon,
            color: selectedGenre == genreData ? genreData.color : kGreyColor,
            size: 30,
          ),
        ),
        if (selectedGenre == genreData)
          Text(
            selectedGenre.name,
            style: kSecondTextStyle(color: selectedGenre.color),
          ),
      ],
    );
  }
}
