import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/genre_data_enum.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';

// final selectedGenreProvider =
//     StateProvider<GenreDataEnum>((ref) => GenreDataEnum.money);

class SelectedIconButton extends ConsumerWidget {
  const SelectedIconButton(this.genreData, {Key? key}) : super(key: key);

  final GenreDataEnum genreData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final selection = ref.watch(selectedGenreProvider.state).state;
    final selectedGenre =
        ref.watch(itemProvider.select((state) => state.genre));
    return Column(
      children: [
        IconButton(
          onPressed: () {
            // ref.read(selectedGenreProvider.state).update((state) => genreData);
            ref
                .read(itemProvider.state)
                .update((state) => state.copyWith(genre: genreData));
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
