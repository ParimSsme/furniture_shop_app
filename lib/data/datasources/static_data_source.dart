import 'package:furniture_shop_app/domain/entities/furniture_entity.dart';
import '../static/app_constants.dart';

class StaticDataSource {
  const StaticDataSource();

  List<FurnitureEntity> getFurniture() {
    return AppConstants.furniture;
  }

  FurnitureEntity getFurnitureById({
    required int id,
  }) => AppConstants.furniture.firstWhere((item) => item.id == id);

  List<String> getCategorySvgs() {
    return AppConstants.categorySvgs;
  }

  String getAppName() {
    return AppConstants.appName;
  }
}