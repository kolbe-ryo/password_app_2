// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

// Project imports:
import '../../../model/id_password_save_model.dart';
import '../atom/nothing_data_text.dart';
import 'id_password_card.dart';

class GridviewItems extends ConsumerWidget {
  const GridviewItems(this.idPasswordSaveModels, {Key? key}) : super(key: key);

  final List<IdPasswordSaveModel> idPasswordSaveModels;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return idPasswordSaveModels.isNotEmpty
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.3,
              crossAxisCount: SizerUtil.deviceType == DeviceType.mobile ? 2 : 5,
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
