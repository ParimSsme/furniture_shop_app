import 'package:furniture_shop_app/domain/entities/notification_entity.dart';
import 'package:furniture_shop_app/domain/entities/order_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_category_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_entity.dart';

import '../datasources/static_data_source.dart';

class StaticDataRepository {
  final StaticDataSource _staticDataSource;

  StaticDataRepository(this._staticDataSource);

  List<ProductEntity> getProducts() {
    return _staticDataSource.getProducts();
  }

  ProductEntity getProductById({
    required int id,
  }) => _staticDataSource.getProductById(id: id);


  List<ProductCategoryEntity> getCategories() {
    return _staticDataSource.getCategories();
  }

  List<OrderEntity> getOrders() {
    return _staticDataSource.getOrders();
  }

  List<NotificationEntity> getNotifications() {
    return _staticDataSource.getNotifications();
  }

  String getAppName() {
    return _staticDataSource.getAppName();
  }
}