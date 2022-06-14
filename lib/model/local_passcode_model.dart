import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_passcode_model.freezed.dart';
part 'local_passcode_model.g.dart';

@freezed
class LocalPasscordModel with _$LocalPasscordModel {
  const LocalPasscordModel._();

  const factory LocalPasscordModel({
    @Default(4) int length,
    @Default('0000') String passcode,
  }) = _LocalPasscordModel;

  factory LocalPasscordModel.fromJson(Map<String, dynamic> json) =>
      _$LocalPasscordModelFromJson(json);
}
