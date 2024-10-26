import 'package:furniture_shop_app/data/datasources/local_data_source.dart';
import 'package:furniture_shop_app/data/repositories/local_data_repository.dart';
import 'package:furniture_shop_app/domain/entities/my_cart_entity.dart';
import 'package:get/get.dart';

class MyCartController extends GetxController {
  static MyCartController get to => Get.find();

  final LocalDataRepository _localDataRepository =
      LocalDataRepository(LocalDataSource());

  final myCarts = <MyCartEntity>[].obs;
  final totalPrice = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void loadData() {
    _loadMyCarts();
    _calculateTotalPrice();
  }

  void _loadMyCarts() {
    myCarts.assignAll(_localDataRepository.getMyCarts() ?? []);
  }

  void _calculateTotalPrice() {
    totalPrice.value =
        myCarts.fold(0, (sum, item) => sum + item.price * item.productCount);
  }

  void increaseProductCount({
    required int id,
  }) {
    final myCartEntity = _findMyCartById(id);
    myCartEntity.productCount++;
    totalPrice.value += myCartEntity.price;
  }

  void reduceProductCount({
    required int id,
  }) {
    final myCartEntity = _findMyCartById(id);
    if (myCartEntity.productCount > 1) {
      myCartEntity.productCount--;
      totalPrice.value -= myCartEntity.price;
    }
  }

  int getProductCountById(int id) => _findMyCartById(id).productCount;

  MyCartEntity _findMyCartById(int id) {
    return myCarts.firstWhere((myCart) => myCart.id == id);
  }

  void removeMyCart({
    required int id,
  }) {
    _localDataRepository.removeMyCart(myCartEntity: _findMyCartById(id));
    _loadMyCarts();
    _calculateTotalPrice();
  }

  void checkOut() {
    // Add checkout logic here
  }
}
