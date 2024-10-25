import 'package:furniture_shop_app/domain/entities/furniture_entity.dart';
import '../static/app_constants.dart';

class StaticDataSource {

  List<FurnitureEntity> getFurniture() {
    return AppConstants.furniture;
  }

  List<String> getCategorySvgs() {
    return AppConstants.categorySvgs;
  }

  String getAppName() {
    return AppConstants.appName;
  }
}