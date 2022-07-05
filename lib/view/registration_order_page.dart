// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../state/id_password_save_model_list.dart';
import '../view_model/id_password_save_view_model.dart';
import 'component/organisms/gridview_items.dart';

final savingProvider =
    StateNotifierProvider<IdPasswordSaveViewModel, IdPasswordSaveModelList>((ref) => IdPasswordSaveViewModel());

class RegistrationOrderPage extends ConsumerWidget {
  const RegistrationOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idPasswordSaveModels = ref.watch(savingProvider.select((model) => model.modelList));
    return GridviewItems(idPasswordSaveModels);
  }
}
