import 'package:furniture_shop_app/data/datasources/local_data_source.dart';
import 'package:furniture_shop_app/domain/entities/my_cart_entity.dart';
import 'package:furniture_shop_app/domain/entities/user_entity.dart';
import '../../domain/entities/furniture_entity.dart';
import '../datasources/static_data_source.dart';

class LocalDataRepository {
  final LocalDataSource _localDataSource;

  LocalDataRepository(this._localDataSource);

  void saveUser({
    required UserEntity userEntity,
  }) =>
      _localDataSource.saveUser(userEntity: userEntity);

  UserEntity? getUser() {
    return _localDataSource.getUser();
  }

  void clearUser() {
    _localDataSource.clearUser();
  }

  List<FurnitureEntity> getFavorites(){
    final List<FurnitureEntity> list = [];
    final favoritesIds = _localDataSource.getFavorites();
    const StaticDataSource staticDataSource = StaticDataSource();
    for(var i = 0; i < favoritesIds.length; i++){
      list.add(staticDataSource.getFurnitureById(id: favoritesIds[i]));
    }
    return list;
  }

  void addFavorite({
    required int id,
  }) =>
      _localDataSource.addFavorite(id: id);

  void removeFavorite({
    required int id,
  }) =>
      _localDataSource.removeFavorite(id: id);

  void addMyCart({
    required MyCartEntity cartEntity,
  }) =>
      _localDataSource.addMyCart(cartEntity: cartEntity);

  bool isMyCart({
    required int id,
  }) =>
      _localDataSource.isMyCart(id: id);

  void removeMyCart({
    required MyCartEntity myCartEntity,
  }) =>
      _localDataSource.removeMyCart(myCartEntity);

  List<MyCartEntity>? getMyCarts() {
    return _localDataSource.getMyCarts();
  }
}
