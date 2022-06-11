import 'package:password_app_2/interface/secure_storage_interface.dart';
import 'package:password_app_2/service/secure_storage_service.dart';

class SettingsPageViewModel {
  final SecureStorageInterface _interface = SecureStorageService();

  void delete() {
    _interface.delete();
  }
}
