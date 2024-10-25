import 'package:get/get.dart';
import '../../data/datasources/static_data_source.dart';
import '../../data/repositories/static_data_repository.dart';
import '../../domain/entities/furniture_entity.dart';

class ProductDetailController extends GetxController {
  static ProductDetailController get to => Get.find();

  final StaticDataRepository _staticDataRepository;

  ProductDetailController()
      : _staticDataRepository = StaticDataRepository(StaticDataSource());

  /// Static data
  final Rx<FurnitureEntity> _furniture = const FurnitureEntity().obs;

  FurnitureEntity get furniture => _furniture.value;

  void loadData({
    required int id,
  }) {
    _furniture.value = _staticDataRepository.getFurnitureById(id: id);
  }

  void onAddToCart(){

  }
}
