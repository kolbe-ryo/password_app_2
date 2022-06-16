// Project imports:
import '../interface/secure_storage_interface.dart';
import '../service/secure_storage_service.dart';

class SettingsPageViewModel {
  final SecureStorageInterface _interface = SecureStorageService();

  void deleteAll() {
    _interface.deleteAll();
  }
}
