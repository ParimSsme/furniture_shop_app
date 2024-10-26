import 'package:furniture_shop_app/data/datasources/local_data_source.dart';
import 'package:furniture_shop_app/domain/entities/user_entity.dart';
import '../models/user_data_model.dart';

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

}