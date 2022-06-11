import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/interface/secure_storage_interface.dart';
import 'package:password_app_2/model/id_password_save_model.dart';
import 'package:password_app_2/service/secure_storage_service.dart';
import 'package:password_app_2/state/id_password_save_model_list.dart';

class IdPasswordSaveViewModel extends StateNotifier<IdPasswordSaveModelList> {
  IdPasswordSaveViewModel() : super(const IdPasswordSaveModelList());

  final SecureStorageInterface _interface = SecureStorageService();

  // secure_storageから取得
  Future<void> get() async {
    final data = await _interface.get();
    state = data ?? state.copyWith(modelList: []);
  }

  // secure_storageから取得
  Future<void> getSortingGenre() async {
    final data = await _interface.get();
    state = data ?? state.copyWith(modelList: []);
  }

  // secure_storageへ保存
  Future<void> save() async => await _interface.save(state);

  void addIdPasswordSaveModel(IdPasswordSaveModel model) =>
      state = state.copyWith(
        modelList: [...state.modelList, model],
      );

  // stateリスト内のmodelと合致したものを更新して再度保存する処理
  void update(IdPasswordSaveModel model) {
    state = state.copyWith(
      modelList: state.modelList
          .map((_model) => _model.time == model.time ? model : _model)
          .toList(),
    );
  }

  // stateリスト内のmodelと合致したものを除いて再度保存する処理
  void delete(IdPasswordSaveModel model) {
    final modelList = state.modelList
        .map((_model) => _model)
        .where((_model) => _model.time != model.time)
        .toList();
    state = state.copyWith(modelList: modelList);
  }
}
