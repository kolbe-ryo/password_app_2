import 'package:password_app_2/state/id_password_save_model_list.dart';

abstract class SecureStorageInterface {
  Future<void> save(IdPasswordSaveModelList value);
  Future<IdPasswordSaveModelList> get();
  Future<void> delete();
}
