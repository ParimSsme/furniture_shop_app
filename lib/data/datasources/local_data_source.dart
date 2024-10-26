import 'package:furniture_shop_app/domain/entities/user_entity.dart';
import 'package:get_storage/get_storage.dart';
import '../../domain/entities/my_cart_entity.dart';

class LocalDataSource {
  static final _storage = GetStorage();
  static const _keyFavorites = 'favorites';
  static const _keyUser = 'loggedInUser';
  static const _keyMyCarts = 'myCarts';

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
  Future<void> saveFavorites(List<dynamic> favorites) async {
    await _storage.write(_keyFavorites, favorites);
  }

  // Get the list of favorite items
  List<dynamic> getFavorites() {
    return  _storage.read<List<dynamic>>(_keyFavorites) ?? [];
  }

  // Check if an item is in the favorites list
  bool isFavorite(String item) {
    return getFavorites().contains(item);
  }

  // Add an item to the favorites list
  Future<void> addFavorite({
    required int id,
  }) async {
    final favorites = getFavorites();
    if (!favorites.contains(id)) {
      favorites.add(id);
      await saveFavorites(favorites);
    }
  }

  // Remove an item from the favorites list
  Future<void> removeFavorite({required int id,}) async {
    final favorites = getFavorites();
    if (favorites.contains(id)) {
      favorites.remove(id);
      await saveFavorites(favorites);
    }
  }

  // Clear all favorites
  Future<void> clearFavorites() async {
    await _storage.remove(_keyFavorites);
  }

  /// My Cart
  List<MyCartEntity> getMyCarts() {
    return _storage.read<List<MyCartEntity>>(_keyMyCarts) ?? [];
  }

  Future<void> addMyCart({
    required MyCartEntity cartEntity,
  }) async {
    final myCarts = getMyCarts();
    if (!myCarts.contains(cartEntity)) {
      myCarts.add(cartEntity);
      await saveMyCarts(myCarts);
    }
  }

  bool isMyCart({required int id,}) {
    return getMyCarts().any((myCart) => myCart.id == id);
  }

  Future<void> saveMyCarts(List<MyCartEntity> myCarts) async {
    await _storage.write(_keyMyCarts, myCarts);
  }

  // Remove an item from the favorites list
  Future<void> removeMyCart(MyCartEntity cartEntity) async {
    final myCarts = getMyCarts();
    if (myCarts.contains(cartEntity)) {
      myCarts.remove(cartEntity);
      await saveMyCarts(myCarts);
    }
  }
}
