import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/assets/app_icon_assets.dart';
import 'package:furniture_shop_app/core/assets/app_image_assets.dart';
import 'package:furniture_shop_app/core/enums/order_state.dart';
import 'package:furniture_shop_app/domain/entities/notification_entity.dart';
import 'package:furniture_shop_app/domain/entities/order_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_category_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_review_entity.dart';

class AppConstants {
  // Sample constants
  static const String appName = "YourApp";
  static const String defaultLanguage = "en";

  static const List<ProductCategoryEntity> categories = [
    ProductCategoryEntity(
      id: 0,
      image: AppIconAssets.popular,
    ),
    ProductCategoryEntity(
      id: 1,
      image: AppIconAssets.chair,
    ),
    ProductCategoryEntity(
      id: 2,
      image: AppIconAssets.table,
    ),
    ProductCategoryEntity(
      id: 3,
      image: AppIconAssets.armchair,
    ),
    ProductCategoryEntity(
      id: 4,
      image: AppIconAssets.bed,
    ),
    ProductCategoryEntity(
      id: 5,
      image: AppIconAssets.lamp,
    ),
  ];

  /// Notifications static data
  static List<NotificationEntity> notifications = const [
    NotificationEntity(
      id: 1,
      image: AppImageAssets.desk2,
      title: 'Your order #123456789 has been confirmed',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
      isNew: true,
    ),
    NotificationEntity(
      id: 2,
      image: AppImageAssets.lamp5,
      title: 'Your order #123456789 has been canceled',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
    ),
    NotificationEntity(
      id: 3,
      title: 'Discover hot sale furnitures this week.',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
      isHot: true,
    ),
    NotificationEntity(
      id: 4,
      image: AppImageAssets.desk1,
      title: 'Your order #123456789 has been shipped successfully',
      description:
          'Please help us to confirm and rate your order to get 10% discount code for next order. ',
    ),
    NotificationEntity(
      id: 4,
      image: AppImageAssets.desk1,
      title: 'Your order #123456789 has been confirmed',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec.  ',
    ),
    NotificationEntity(
      id: 4,
      image: AppImageAssets.desk1,
      title: 'Your order #123456789 has been canceled',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec.  ',
    ),
    NotificationEntity(
      id: 4,
      image: AppImageAssets.desk1,
      title: 'Your order #123456789 has been shipped successfully',
      description:
          'Please help us to confirm and rate your order to get 10% discount code for next order. ',
    ),
  ];

  /// Orders static data
  static List<OrderEntity> orders = const [
    OrderEntity(
      no: 238562312,
      date: '20/09/2024',
      quantity: 16,
      totalAmount: 1200,
      state: OrderState.delivered,
    ),
    OrderEntity(
      no: 458578312,
      date: '25/08/2021',
      quantity: 3,
      totalAmount: 150,
      state: OrderState.cancelled,
    ),
    OrderEntity(
      no: 658734234,
      date: '20/07/2020',
      quantity: 5,
      totalAmount: 500,
      state: OrderState.processing,
    ),
    OrderEntity(
      no: 455676859,
      date: '02/04/2020',
      quantity: 7,
      totalAmount: 900,
      state: OrderState.processing,
    ),
    OrderEntity(
      no: 120945678,
      date: '20/03/2020',
      quantity: 1,
      totalAmount: 40,
      state: OrderState.cancelled,
    )
  ];

  /// Product Reviews static data
  static List<ProductReviewEntity> reviews = const [
    ProductReviewEntity(
      id: 0,
      reviewerName: 'Bruno Fernandes',
      reviewerImage: AppImageAssets.bruno2,
      rate: 3.5,
      date: '20/03/2020',
      review:
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price',
    ),
    ProductReviewEntity(
      id: 0,
      reviewerName: 'Tracy Mosby',
      reviewerImage: AppImageAssets.tracy,
      rate: 5,
      date: '20/03/2020',
      review:
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price',
    ),
    ProductReviewEntity(
      id: 0,
      reviewerName: 'Bruno Fernandes',
      reviewerImage: AppImageAssets.bruno1,
      rate: 4,
      date: '20/03/2020',
      review:
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price',
    ),
  ];

  /// Products static data
  static List<ProductEntity> products = [

    /* Chairs */
    ProductEntity(
      id: 1,
      categoryId: 1,
      name: 'Chair',
      images: {
        Colors.black: const [
          AppImageAssets.chair1Black_1,
          AppImageAssets.chair1Black_2,
          AppImageAssets.chair1Black_3,
          AppImageAssets.chair1Black_4,
        ],
        const Color(0xffe3d7d7): const [
          AppImageAssets.chair1Pink_1,
          AppImageAssets.chair1Pink_2,
          AppImageAssets.chair1Pink_3,
        ],
      },
      description:
      'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 50,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
      isPopular: true,
    ),
    ProductEntity(
      id: 2,
      categoryId: 1,
      name: 'Chair',
      images: {
        Colors.grey: const [
          AppImageAssets.chair2,
        ],
      },
      description:
      'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 50,
      rate: 3.9,
      reviews: 100,
    ),

    ProductEntity(
      id: 0,
      categoryId: 0,
      name: 'Black Simple Lamp',
      images: {
        Colors.grey: const [
          AppImageAssets.lamp1,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 12,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
    ),
    ProductEntity(
      id: 1,
      categoryId: 0,
      name: 'Minimal Stand',
      images: {
        Colors.grey: const [
          AppImageAssets.chair2,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 25,
      rate: 4.5,
      reviews: 50,
      isFavourite: false,
    ),
    ProductEntity(
      id: 2,
      categoryId: 2,
      name: 'Coffee Chair',
      images: {
        Colors.grey: const [
          AppImageAssets.chair2,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 20,
      rate: 5,
      reviews: 120,
      isFavourite: true,
    ),
    ProductEntity(
      id: 3,
      categoryId: 4,
      name: 'Simple Desk',
      images: {
        Colors.grey: const [
          AppImageAssets.chair2,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 50,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
    ),



    /// Lamps
    ProductEntity(
      id: 5,
      categoryId: 5,
      name: 'Lamp',
      images: {
        Colors.grey: const [
          AppImageAssets.lamp1,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 50,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
    ),
    ProductEntity(
      id: 6,
      categoryId: 5,
      name: 'Lamp',
      images: {
        Colors.grey: const [
          AppImageAssets.lamp2,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 50,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
    ),
    ProductEntity(
      id: 6,
      categoryId: 5,
      name: 'Lamp',
      images: {
        Colors.grey: const [
          AppImageAssets.lamp3,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 50,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
    ),
    ProductEntity(
      id: 6,
      categoryId: 5,
      name: 'Lamp',
      images: {
        Colors.grey: const [
          AppImageAssets.lamp4,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 50,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
    ),
  ];
}
