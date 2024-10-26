import 'package:furniture_shop_app/data/datasources/local_data_source.dart';
import 'package:furniture_shop_app/data/repositories/local_data_repository.dart';
import 'package:furniture_shop_app/domain/entities/my_cart_entity.dart';
import 'package:get/get.dart';
import '../../data/datasources/static_data_source.dart';
import '../../data/repositories/static_data_repository.dart';
import '../../domain/entities/furniture_entity.dart';

class ProductDetailController extends GetxController {
  static ProductDetailController get to => Get.find();

  final StaticDataRepository _staticDataRepository;
  final LocalDataRepository _localDataRepository;

  ProductDetailController()
      : _staticDataRepository = StaticDataRepository(StaticDataSource()),
        _localDataRepository = LocalDataRepository(LocalDataSource());

  /// Static data
  final Rx<FurnitureEntity> _furniture = const FurnitureEntity().obs;
  FurnitureEntity get furniture => _furniture.value;

  final RxInt _productCount = 1.obs;
  int get productCount => _productCount.value;

  void loadData({
    required int id,
  }) {
    _furniture.value = _staticDataRepository.getFurnitureById(id: id);
  }

  void increaseProductCount() => _productCount.value++;
  void reduceProductCount() => _productCount.value--;

  void onAddToCart() {
    _localDataRepository.addMyCart(
      cartEntity: MyCartEntity(
        id: furniture.id,
        image: furniture.image,
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
