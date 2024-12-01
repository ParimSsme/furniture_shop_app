import 'dart:async';
import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/utils/app_navigator.dart';
import 'package:furniture_shop_app/domain/entities/product_entity.dart';
import 'package:get/get.dart';
import '../../data/datasources/static_data_source.dart';
import '../../data/repositories/static_data_repository.dart';

class ProductDetailController extends GetxController {
  static ProductDetailController get to => Get.find();

  final StaticDataRepository _staticDataRepository;

  ProductDetailController()
      : _staticDataRepository = StaticDataRepository(const StaticDataSource());

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
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (imageIndex.value <
          (furniture.images[selectedColor]?.length ?? 1) - 1) {
        imageIndex.value++;
      } else {
        imageIndex.value = 0;
      }
      pageController.animateToPage(
        imageIndex.value,
        duration: const Duration(milliseconds: 500),
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
    AppNavigator.to.navigateToProductReview();
  }

  void onAddToCart() {

  }

  void onAddToFavorite() {
  }
}
