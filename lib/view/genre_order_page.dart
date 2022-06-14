import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/genre_data_enum.dart';
import 'package:password_app_2/view/component/atom/nothing_data_text.dart';
import 'package:password_app_2/view/component/atom/selected_icon_button.dart';
import 'package:password_app_2/view/component/organisms/id_password_card.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';
import 'package:password_app_2/view/registration_order_page.dart';

class GenreOrderPage extends ConsumerWidget {
  const GenreOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.read(savingProvider.notifier).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final selectingGenre =
              ref.watch(itemProvider.select((value) => value.genre));
          final idPasswordSaveModel = ref.watch(
            savingProvider.select(
              (model) => model.modelList
                  .where((element) => element.genre == selectingGenre)
                  .toList(),
            ),
          );
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: GenreDataEnum.values
                    .map(
                      (value) => SelectedIconButton(value),
                    )
                    .toList(),
              ),
              const SizedBox(height: kSpacing),
              Expanded(
                child: idPasswordSaveModel.isNotEmpty
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.3,
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                        ),
                        itemBuilder: (context, index) {
                          return IdPasswordCard(idPasswordSaveModel[index]);
                        },
                        itemCount: idPasswordSaveModel.length,
                      )
                    : const NothingDataText(),
              )
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
