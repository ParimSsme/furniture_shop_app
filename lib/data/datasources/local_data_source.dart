import 'package:furniture_shop_app/domain/entities/user_entity.dart';
import 'package:get_storage/get_storage.dart';

class LocalDataSource {
  static final _storage = GetStorage();
  static const _keyUser = 'loggedInUser';

  // Initialize both storages
  static Future<void> init() async {
    await GetStorage.init();
  }

  /// User
  // Save user data (you can modify based on the user data structure)
  Future<void> saveUser({
    required UserEntity userEntity,
  }) async {
    await _storage.write(_keyUser, userEntity);
  }

  // Retrieve user data
  UserEntity? getUser() {
    return _storage.read<UserEntity>(_keyUser);
  }

  // Clear user data on logout
  Future<void> clearUser() async {
    await _storage.remove(_keyUser);
  }

}
