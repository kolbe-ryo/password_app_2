import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:password_app_2/state/id_password_save_model.dart';

part 'id_password_save_model_list.freezed.dart';
part 'id_password_save_model_list.g.dart';

@freezed
class IdPasswordSaveModelList with _$IdPasswordSaveModelList {
  @JsonSerializable(explicitToJson: true)
  const factory IdPasswordSaveModelList({
    @Default([]) List<IdPasswordSaveModel> modelList,
  }) = _IdPasswordSaveModelList;

  factory IdPasswordSaveModelList.fromJson(Map<String, dynamic> json) =>
      _$IdPasswordSaveModelListFromJson(json);
}
