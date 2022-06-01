abstract class SecureStorageInterface {
  Future<void> create();
  Future<void> update();
  Future<void> get();
  Future<void> delete();
}
