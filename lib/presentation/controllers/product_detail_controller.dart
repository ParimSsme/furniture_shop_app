import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/utils/app_navigator.dart';
import 'package:furniture_shop_app/data/datasources/local_data_source.dart';
import 'package:furniture_shop_app/data/repositories/local_data_repository.dart';
import 'package:furniture_shop_app/domain/entities/my_cart_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_entity.dart';
import 'package:get/get.dart';
import '../../data/datasources/static_data_source.dart';
import '../../data/repositories/static_data_repository.dart';

class ProductDetailController extends GetxController {
  static ProductDetailController get to => Get.find();

  final StaticDataRepository _staticDataRepository;
  final LocalDataRepository _localDataRepository;

  ProductDetailController()
      : _staticDataRepository = StaticDataRepository(StaticDataSource()),
        _localDataRepository = LocalDataRepository(LocalDataSource());

  /// Static data
  final Rx<ProductEntity> _furniture = const ProductEntity().obs;
  ProductEntity get furniture => _furniture.value;

  final RxInt _productCount = 1.obs;
  final RxInt imageIndex = 0.obs;
  final Rx<Color> selectedColor = Colors.white.obs;
  int get productCount => _productCount.value;
  late PageController pageController;
  late Timer _timer;

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (imageIndex.value <
          (furniture.images[selectedColor]?.length ?? 1) - 1) {
        imageIndex.value++;
      } else {
        imageIndex.value = 0;
      }
      pageController.animateToPage(
        imageIndex.value,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    pageController.dispose();
    super.dispose();
  }

  void loadData({
    required int id,
  }) {
    _furniture.value = _staticDataRepository.getProductById(id: id);
    selectedColor(_furniture.value.images.keys.first);
    pageController = PageController(initialPage: 0);
    _startAutoSlide();
  }

  void increaseProductCount() => _productCount.value++;
  void reduceProductCount() => _productCount.value--;

  void navigateToProductReviewScreen() {

  }

  void onAddToCart() {
    _localDataRepository.addMyCart(
      cartEntity: MyCartEntity(
        id: furniture.id,
        images: furniture.images,
        name: furniture.name,
        price: furniture.price,
        productCount: productCount,
      ),
    );
  }

  void onAddToFavorite() {
    _localDataRepository.addFavorite(id: furniture.id);
  }
}
