import 'package:furniture_shop_app/domain/entities/user_entity.dart';
import 'package:get_storage/get_storage.dart';

import '../models/user_data_model.dart';

class LocalDataSource {
  static final _storage = GetStorage();
  static const _keyFavorites = 'favorites';
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

  /// Favorites
  // Save list of favorites
  Future<void> saveFavorites(List<int> favorites) async {
    await _storage.write(_keyFavorites, favorites);
  }

  // Get the list of favorite items
  List<int> getFavorites() {
    return _storage.read<List<int>>(_keyFavorites) ?? [];
  }

  // Check if an item is in the favorites list
  bool isFavorite(String item) {
    return getFavorites().contains(item);
  }

  // Add an item to the favorites list
  Future<void> addFavorite(String item) async {
    final favorites = getFavorites();
    if (!favorites.contains(item)) {
      favorites.add(0);
      await saveFavorites(favorites);
    }
  }

  // Remove an item from the favorites list
  Future<void> removeFavorite(String item) async {
    final favorites = getFavorites();
    if (favorites.contains(item)) {
      favorites.remove(item);
      await saveFavorites(favorites);
    }
  }

  // Clear all favorites
  Future<void> clearFavorites() async {
    await _storage.remove(_keyFavorites);
  }
}
