/// Key-value boundary for on-device storage.
///
/// SharedPreferences or Hive will implement this in a later phase.
abstract interface class LocalStorage {
  Future<String?> read(String key);

  Future<void> write(String key, String value);

  Future<void> remove(String key);
}
