import 'package:furniture_shop_app/data/datasources/local_data_source.dart';
import 'package:furniture_shop_app/domain/entities/my_cart_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_entity.dart';
import 'package:furniture_shop_app/domain/entities/user_entity.dart';
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
