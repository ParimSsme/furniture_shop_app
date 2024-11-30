import 'package:furniture_shop_app/domain/entities/notification_entity.dart';
import 'package:furniture_shop_app/domain/entities/order_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_category_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_review_entity.dart';
import '../static/app_constants.dart';

class StaticDataSource {
  const StaticDataSource();

  List<ProductEntity> getProducts() {
    return AppConstants.products;
  }

  ProductEntity getProductById({
    required int id,
  }) => AppConstants.products.firstWhere((item) => item.id == id);

  List<ProductCategoryEntity> getCategories() {
    return AppConstants.categories;
  }

  List<OrderEntity> getOrders() {
    return AppConstants.orders;
  }

  List<ProductReviewEntity> getReviews() {
    return AppConstants.reviews;
  }

  List<NotificationEntity> getNotifications() {
    return AppConstants.notifications;
  }

  String getAppName() {
    return AppConstants.appName;
  }
}