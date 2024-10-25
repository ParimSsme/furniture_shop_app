import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/assets/app_image_assets.dart';
import 'package:furniture_shop_app/core/assets/app_svg_assets.dart';
import 'package:furniture_shop_app/domain/entities/furniture_entity.dart';

class AppConstants {
  // Sample constants
  static const String appName = "YourApp";
  static const String defaultLanguage = "en";

  static const List<String> categorySvgs = [
    AppSvgAssets.popular,
    AppSvgAssets.chair,
    AppSvgAssets.table,
    AppSvgAssets.armchair,
    AppSvgAssets.bed,
    AppSvgAssets.lamp,
  ];


  // Sample static data
  static const List<FurnitureEntity> furniture = [
    FurnitureEntity(
      id: 0,
      name: 'Black Simple Lamp',
      image: AppImageAssets.blackSimpleLamp,
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
    FurnitureEntity(
      id: 1,
      name: 'Minimal Stand',
      image: AppImageAssets.minimalStand,
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
    FurnitureEntity(
      id: 2,
      name: 'Coffee Chair',
      image: AppImageAssets.coffeeChair,
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
    FurnitureEntity(
      id: 3,
      name: 'Simple Desk',
      image: AppImageAssets.simpleDesk,
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
