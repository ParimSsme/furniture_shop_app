import 'dart:ffi';

import 'package:furniture_shop_app/domain/entities/furniture_entity.dart';
import 'package:get/get.dart';

import '../../core/routes/app_routes.dart';
import '../../data/datasources/static_data_source.dart';
import '../../data/repositories/static_data_repository.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final StaticDataRepository _staticDataRepository;

  HomeController()
      : _staticDataRepository = StaticDataRepository(StaticDataSource());

  /// Static data
  var furniture = <FurnitureEntity>[].obs;
  var categorySvgs = <String>[].obs;
  final _selectedCategoryIndex = 0.obs;

  get selectedCategoryIndex => _selectedCategoryIndex.value;

  void changeSelectedCategory(index) => _selectedCategoryIndex.value = index;

  @override
  void onInit() {
    super.onInit();
    loadStaticData();
  }

  void loadStaticData() {
    furniture.value = _staticDataRepository.getFurniture();
    categorySvgs.value = _staticDataRepository.getCategorySvgs();
  }

  void onItemClick({
    required int id,
  }) =>
      Get.toNamed(AppRoutes.productDetail, arguments: id);
}
