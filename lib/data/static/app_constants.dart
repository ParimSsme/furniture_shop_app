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
      image: AppImageAssets.table2,
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
      image: AppImageAssets.table2,
      title: 'Your order #123456789 has been shipped successfully',
      description:
          'Please help us to confirm and rate your order to get 10% discount code for next order. ',
    ),
    NotificationEntity(
      id: 4,
      image: AppImageAssets.table3,
      title: 'Your order #123456789 has been confirmed',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec.  ',
    ),
    NotificationEntity(
      id: 4,
      image: AppImageAssets.table4,
      title: 'Your order #123456789 has been canceled',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec.  ',
    ),
    NotificationEntity(
      id: 4,
      image: AppImageAssets.table1_1,
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
    /* Chairs ***/
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

    /* Desks ***/
    ProductEntity(
      id: 3,
      categoryId: 2,
      name: 'Table',
      images: {
        Colors.brown: const [
          AppImageAssets.table1_1,
          AppImageAssets.table1_2,
          AppImageAssets.table1_3,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 12,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
      isPopular: true,
    ),
    ProductEntity(
      id: 4,
      categoryId: 2,
      name: 'Table',
      images: {
        Colors.brown: const [
          AppImageAssets.table2,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 12,
      rate: 3.9,
      reviews: 100,
    ),
    ProductEntity(
      id: 5,
      categoryId: 2,
      name: 'Table',
      images: {
        Colors.white: const [
          AppImageAssets.table3,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 12,
      rate: 3.9,
      reviews: 100,
    ),
    ProductEntity(
      id: 6,
      categoryId: 2,
      name: 'Table',
      images: {
        Colors.brown: const [
          AppImageAssets.table4,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 12,
      rate: 3.9,
      reviews: 100,
    ),
    ProductEntity(
      id: 7,
      categoryId: 2,
      name: 'Table',
      images: {
        Colors.brown: const [
          AppImageAssets.table5,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 12,
      rate: 3.9,
      reviews: 100,
    ),
    ProductEntity(
      id: 8,
      categoryId: 2,
      name: 'Table',
      images: {
        Colors.brown: const [
          AppImageAssets.table6,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 12,
      rate: 3.9,
      reviews: 100,
    ),

    /* Armchairs ***/
    ProductEntity(
      id: 9,
      categoryId: 3,
      name: 'Armchair',
      images: {
        const Color(0xff007263): const [
          AppImageAssets.armchair1Green_1,
          AppImageAssets.armchair1Green_2,
          AppImageAssets.armchair1Green_3,
        ],
        const Color(0xffe7c56c): const [
          AppImageAssets.armchair1Yellow_1,
          AppImageAssets.armchair1Yellow_2,
          AppImageAssets.armchair1Yellow_3,
        ],
        const Color(0xff85b1c5): const [
          AppImageAssets.armchair1_2,
        ],
        const Color(0xff2aa6be): const [
          AppImageAssets.armchair1_3,
        ],
        const Color(0xff75c6ca): const [
          AppImageAssets.armchair1_4,
        ],
      },
      description:
          'This armchair offers the perfect balance of comfort and elegance. Its plush cushioning and ergonomic design provide exceptional support for relaxing. The sturdy frame and high-quality upholstery ensure durability, while the timeless design enhances any room’s decor. Ideal for lounging, reading, or adding a cozy touch to your space.',
      price: 50,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
      isPopular: true,
    ),
    ProductEntity(
      id: 10,
      categoryId: 3,
      name: 'Armchair',
      images: {
        const Color(0xffebb9b2): const [
          AppImageAssets.armchair2Pink_1,
          AppImageAssets.armchair2Pink_2,
          AppImageAssets.armchair2Pink_3,
        ],
        const Color(0xffa1348d): const [
          AppImageAssets.armchair2_2,
        ],
      },
      description:
          'This armchair offers the perfect balance of comfort and elegance. Its plush cushioning and ergonomic design provide exceptional support for relaxing. The sturdy frame and high-quality upholstery ensure durability, while the timeless design enhances any room’s decor. Ideal for lounging, reading, or adding a cozy touch to your space.',
      price: 50,
      rate: 3.9,
      reviews: 100,
    ),
    ProductEntity(
      id: 11,
      categoryId: 3,
      name: 'Armchair',
      images: {
        const Color(0xffdcc9cb): const [
          AppImageAssets.armchair3_1,
          AppImageAssets.armchair3_2,
        ],
      },
      description:
          'This armchair offers the perfect balance of comfort and elegance. Its plush cushioning and ergonomic design provide exceptional support for relaxing. The sturdy frame and high-quality upholstery ensure durability, while the timeless design enhances any room’s decor. Ideal for lounging, reading, or adding a cozy touch to your space.',
      price: 50,
      rate: 3.9,
      reviews: 100,
    ),
    ProductEntity(
      id: 12,
      categoryId: 3,
      name: 'Armchair',
      images: {
        Colors.black: const [
          AppImageAssets.armchair4,
        ],
      },
      description:
          'This armchair offers the perfect balance of comfort and elegance. Its plush cushioning and ergonomic design provide exceptional support for relaxing. The sturdy frame and high-quality upholstery ensure durability, while the timeless design enhances any room’s decor. Ideal for lounging, reading, or adding a cozy touch to your space.',
      price: 50,
      rate: 3.9,
      reviews: 100,
    ),

    /* Beds ***/
    ProductEntity(
      id: 13,
      categoryId: 4,
      name: 'Bed',
      images: {
        const Color(0xff3f3b32): const [
          AppImageAssets.bed1Brown_1,
          AppImageAssets.bed1Brown_2,
        ],
        const Color(0xff3c404c): const [
          AppImageAssets.bed1_2,
        ],
        const Color(0xff7b706a): const [
          AppImageAssets.bed1_3,
        ],
        const Color(0xffa39e9b): const [
          AppImageAssets.bed1_4,
        ],
      },
      description:
      'This bed combines comfort and durability with a sleek, modern design. The sturdy frame provides excellent support, while the high-quality finish adds a touch of elegance to any bedroom. Easy to assemble and spacious, it ensures a restful night\'s sleep. A perfect blend of style and functionality!',
      price: 50,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
      isPopular: true,
    ),
    ProductEntity(
      id: 14,
      categoryId: 4,
      name: 'Bed',
      images: {
        const Color(0xffad9b8f): const [
          AppImageAssets.bed2LightBrown_1,
          AppImageAssets.bed2LightBrown_2,
        ],
        const Color(0xff736e68): const [
          AppImageAssets.bed2_2,
        ],
        const Color(0xffc2c1bf): const [
          AppImageAssets.bed2_3,
        ],
      },
      description:
      'This bed combines comfort and durability with a sleek, modern design. The sturdy frame provides excellent support, while the high-quality finish adds a touch of elegance to any bedroom. Easy to assemble and spacious, it ensures a restful night\'s sleep. A perfect blend of style and functionality!',
      price: 50,
      rate: 3.9,
      reviews: 100,
    ),
    ProductEntity(
      id: 15,
      categoryId: 4,
      name: 'Bed',
      images: {
        const Color(0xff845f3b): const [
          AppImageAssets.bed3_1,
        ],
        const Color(0xff9f8164): const [
          AppImageAssets.bed3_2,
        ],
        const Color(0xff915438): const [
          AppImageAssets.bed3_3,
        ],
      },
      description:
      'This bed combines comfort and durability with a sleek, modern design. The sturdy frame provides excellent support, while the high-quality finish adds a touch of elegance to any bedroom. Easy to assemble and spacious, it ensures a restful night\'s sleep. A perfect blend of style and functionality!',
      price: 50,
      rate: 3.9,
      reviews: 100,
    ),
    ProductEntity(
      id: 16,
      categoryId: 4,
      name: 'Bed',
      images: {
        const Color(0xff896e59): const [
          AppImageAssets.bed4,
        ],
      },
      description:
      'This bed combines comfort and durability with a sleek, modern design. The sturdy frame provides excellent support, while the high-quality finish adds a touch of elegance to any bedroom. Easy to assemble and spacious, it ensures a restful night\'s sleep. A perfect blend of style and functionality!',
      price: 50,
      rate: 3.9,
      reviews: 100,
    ),
    ProductEntity(
      id: 17,
      categoryId: 4,
      name: 'Bed',
      images: {
        const Color(0xff783a23): const [
          AppImageAssets.bed5,
        ],
      },
      description:
      'This bed combines comfort and durability with a sleek, modern design. The sturdy frame provides excellent support, while the high-quality finish adds a touch of elegance to any bedroom. Easy to assemble and spacious, it ensures a restful night\'s sleep. A perfect blend of style and functionality!',
      price: 50,
      rate: 3.9,
      reviews: 100,
    ),
    ProductEntity(
      id: 18,
      categoryId: 4,
      name: 'Bed',
      images: {
        const Color(0xff77544e): const [
          AppImageAssets.bed6,
        ],
      },
      description:
      'This bed combines comfort and durability with a sleek, modern design. The sturdy frame provides excellent support, while the high-quality finish adds a touch of elegance to any bedroom. Easy to assemble and spacious, it ensures a restful night\'s sleep. A perfect blend of style and functionality!',
      price: 50,
      rate: 3.9,
      reviews: 100,
    ),
  ];
}
