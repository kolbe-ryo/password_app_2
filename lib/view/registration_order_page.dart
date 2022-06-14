import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
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
    return FutureBuilder(
      future: ref.read(savingProvider.notifier).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final idPasswordSaveModel =
              ref.watch(savingProvider.select((model) => model.modelList));
          return idPasswordSaveModel.isNotEmpty
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
              : const NothingDataText();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
