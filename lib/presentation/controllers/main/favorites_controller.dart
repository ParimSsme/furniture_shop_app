import 'package:furniture_shop_app/data/datasources/local_data_source.dart';
import 'package:furniture_shop_app/data/repositories/local_data_repository.dart';
import 'package:furniture_shop_app/domain/entities/furniture_entity.dart';
import 'package:furniture_shop_app/domain/entities/my_cart_entity.dart';
import 'package:get/get.dart';

class FavoritesController extends GetxController {
  static FavoritesController get to => Get.find();

  final LocalDataRepository _localDataRepository;

  FavoritesController()
      : _localDataRepository = LocalDataRepository(LocalDataSource());

  // Static data
  final favorites = <FurnitureEntity>[].obs;

  void loadData() {
    _getFavorites();
  }

  void _getFavorites() {
    favorites.assignAll(_localDataRepository.getFavorites());
  }

  FurnitureEntity _findFavoriteById({
    required int id,
  }) {
    return favorites.firstWhere((favorite) => favorite.id == id);
  }

  void removeFavorite({
    required int id,
  }) {
    _localDataRepository.removeFavorite(id: _findFavoriteById(id: id).id);
    _getFavorites();
  }

  void addAllFavoritesToMyCart() {
    for (var favorite in favorites) {
      bool isMyCart = _localDataRepository.isMyCart(id: favorite.id);
      if (!isMyCart) {
        _localDataRepository.addMyCart(
          cartEntity: MyCartEntity(
            id: favorite.id,
            image: favorite.image,
            name: favorite.name,
            price: favorite.price,
            productCount: 1
          ),
        );
      }
    }
  }
}
