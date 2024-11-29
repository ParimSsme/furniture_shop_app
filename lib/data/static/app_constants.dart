import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/assets/app_icon_assets.dart';
import 'package:furniture_shop_app/core/assets/app_image_assets.dart';
import 'package:furniture_shop_app/core/enums/order_state.dart';
import 'package:furniture_shop_app/domain/entities/order_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_category_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_entity.dart';

class AppConstants {
  // Sample constants
  static const String appName = "YourApp";
  static const String defaultLanguage = "en";

  static const List<ProductCategoryEntity> categories = [
    ProductCategoryEntity(id: 0, image: AppIconAssets.popular,),
    ProductCategoryEntity(id: 1, image: AppIconAssets.chair,),
    ProductCategoryEntity(id: 2, image: AppIconAssets.table,),
    ProductCategoryEntity(id: 3, image: AppIconAssets.armchair,),
    ProductCategoryEntity(id: 4, image: AppIconAssets.bed,),
    ProductCategoryEntity(id: 5, image: AppIconAssets.lamp,),
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

  /// Products static data
  static List<ProductEntity> products = [
    ProductEntity(
      id: 0,
      categoryId: 0,
      name: 'Black Simple Lamp',
      images: {
        Colors.grey: const [
          AppImageAssets.blackSimpleLamp,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 12,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
      colors: [
        Colors.amber,
        Colors.grey,
        Colors.blueGrey,
      ],
    ),
    ProductEntity(
      id: 1,
      categoryId: 1,
      name: 'Minimal Stand',
      images: {
        Colors.grey: const [
          AppImageAssets.minimalStand,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 25,
      rate: 4.5,
      reviews: 50,
      isFavourite: false,
      colors: [
        Colors.white,
        Color(0xffb4916c),
        Color(0xffe4cbad),
      ],
    ),
    ProductEntity(
      id: 2,
      categoryId: 2,
      name: 'Coffee Chair',
      images: {
        Colors.grey: const [
          AppImageAssets.coffeeChair,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 20,
      rate: 5,
      reviews: 120,
      isFavourite: true,
      colors: [
        Colors.blueAccent,
        Colors.amber,
      ],
    ),
    ProductEntity(
      id: 3,
      categoryId: 4,
      name: 'Simple Desk',
      images: {
        Colors.grey: const [
          AppImageAssets.simpleDesk,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 50,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
      colors: [
        Colors.deepPurpleAccent,
        Colors.grey,
        Colors.blueGrey,
      ],
    ),

    /// Chairs
    ProductEntity(
      id: 4,
      categoryId: 1,
      name: 'Chair',
      images: {
        Colors.grey: const [
          AppImageAssets.simpleDesk,
        ],
      },
      description:
          'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.',
      price: 50,
      rate: 3.9,
      reviews: 100,
      isFavourite: true,
      colors: [
        Colors.deepPurpleAccent,
        Colors.grey,
        Colors.blueGrey,
      ],
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
      colors: [
        Colors.deepPurpleAccent,
        Colors.grey,
        Colors.blueGrey,
      ],
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
      colors: [
        Colors.deepPurpleAccent,
        Colors.grey,
        Colors.blueGrey,
      ],
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
      colors: [
        Colors.deepPurpleAccent,
        Colors.grey,
        Colors.blueGrey,
      ],
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
      colors: [
        Colors.deepPurpleAccent,
        Colors.grey,
        Colors.blueGrey,
      ],
    ),
  ];

}
