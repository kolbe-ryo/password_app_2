import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/genre_data_enum.dart';
import 'package:password_app_2/model/id_password_card_model.dart';
import 'package:password_app_2/state/id_password_save_model_list.dart';
import 'package:password_app_2/view/component/atom/nothing_data_text.dart';
import 'package:password_app_2/view/component/organisms/id_password_card.dart';
import 'package:password_app_2/view_model/id_password_save_view_model.dart';

final savingProvider =
    StateNotifierProvider<IdPasswordSaveViewModel, IdPasswordSaveModelList>(
        (ref) => IdPasswordSaveViewModel());

class RegistrationOrderPage extends ConsumerWidget {
  const RegistrationOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataLength =
        ref.watch(savingProvider.select((model) => model.modelList.length));
    return FutureBuilder(
      future: ref.watch(savingProvider.notifier).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return dataLength != 0
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemBuilder: (context, index) {
                    final idPasswordSaveModel = ref.watch(savingProvider
                        .select((model) => model.modelList[index]));
                    return IdPasswordCard(
                      IdPasswordCardModel(
                        title: idPasswordSaveModel.name,
                        iconData: idPasswordSaveModel.genre.icon,
                        id: 'id',
                        password: 'password',
                        color: idPasswordSaveModel.genre.color,
                      ),
                    );
                  },
                  itemCount: dataLength,
                  padding: const EdgeInsets.all(kSpacing),
                )
              : const NothingDataText();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
