// Project imports:
import '../model/local_passcode_model.dart';
import '../state/id_password_save_model_list.dart';

abstract class SecureStorageInterface {
  Future<void> save(IdPasswordSaveModelList value);
  Future<IdPasswordSaveModelList?> get();
  Future<void> deleteAll();
  Future<void> savePasscode(LocalPasscodeModel value);
  Future<LocalPasscodeModel?> getPasscode();
}
