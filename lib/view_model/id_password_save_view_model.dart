import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/state/id_password_save_model.dart';
import 'package:password_app_2/state/id_password_save_model_list.dart';

class IdPasswordSaveViewModel extends StateNotifier<IdPasswordSaveModelList> {
  IdPasswordSaveViewModel() : super(IdPasswordSaveModelList());

  void get() {
    // secure_storageからjsonを取得し、モデルに格納したものを取得する
  }

  void update(IdPasswordSaveModel model) =>
      state = state.copyWith(modelList: state.modelList..add(model));

  void save() {
    // モデルをjsonへ変換しsecure_storageに格納する
  }
}
