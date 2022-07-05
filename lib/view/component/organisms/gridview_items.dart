import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/model/id_password_save_model.dart';
import 'package:password_app_2/view/component/atom/nothing_data_text.dart';
import 'package:password_app_2/view/component/organisms/id_password_card.dart';

class GridviewItems extends ConsumerWidget {
  const GridviewItems(this.idPasswordSaveModels, {Key? key}) : super(key: key);

  final List<IdPasswordSaveModel> idPasswordSaveModels;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isIphoneWidth = MediaQuery.of(context).size.width < 600;
    return idPasswordSaveModels.isNotEmpty
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.3,
              crossAxisCount: isIphoneWidth ? 2 : 5,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (context, index) {
              return IdPasswordCard(idPasswordSaveModels[index]);
            },
            itemCount: idPasswordSaveModels.length,
          )
        : const NothingDataText();
  }
}
