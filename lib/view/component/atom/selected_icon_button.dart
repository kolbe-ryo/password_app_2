import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/genre_data_enum.dart';

final selectedGenreProvider =
    StateProvider<GenreDataEnum>((ref) => GenreDataEnum.money);

class SelectedIconButton extends ConsumerWidget {
  const SelectedIconButton(this.genreData, {Key? key}) : super(key: key);

  final GenreDataEnum genreData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selection = ref.watch(selectedGenreProvider.state).state;
    return Column(
      children: [
        IconButton(
          onPressed: () =>
              ref.read(selectedGenreProvider.state).state = genreData,
          icon: Icon(
            genreData.icon,
            color: selection == genreData ? genreData.color : kGreyColor,
            size: 30,
          ),
        ),
        if (selection == genreData)
          Text(
            selection.name,
            style: kSecondTextStyle(color: selection.color),
          ),
      ],
    );
  }
}
