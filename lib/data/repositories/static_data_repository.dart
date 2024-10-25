import 'package:furniture_shop_app/domain/entities/furniture_entity.dart';
import '../datasources/static_data_source.dart';

class StaticDataRepository {
  final StaticDataSource _staticDataSource;

  StaticDataRepository(this._staticDataSource);

  List<FurnitureEntity> getFurniture() {
    return _staticDataSource.getFurniture();
  }

  FurnitureEntity getFurnitureById({
    required int id,
  }) => _staticDataSource.getFurnitureById(id: id);


  List<String> getCategorySvgs() {
    return _staticDataSource.getCategorySvgs();
  }

  String getAppName() {
    return _staticDataSource.getAppName();
  }
}