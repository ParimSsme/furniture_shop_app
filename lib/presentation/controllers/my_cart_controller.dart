import 'package:furniture_shop_app/core/params/screen/check_out_screen_param.dart';
import 'package:furniture_shop_app/core/utils/custom_snackbar.dart';
import 'package:furniture_shop_app/domain/entities/my_cart_entity.dart';
import 'package:get/get.dart';
import '../../core/utils/app_navigator.dart';
import '../../data/datasources/static_data_source.dart';
import '../../data/repositories/static_data_repository.dart';

class MyCartController extends GetxController {
  static MyCartController get to => Get.find();

  final StaticDataRepository _staticDataRepository;

  MyCartController()
      : _staticDataRepository = StaticDataRepository(const StaticDataSource());

  /// Static data
  late List<MyCartEntity> _myCarts = <MyCartEntity>[];
  late RxList<MyCartEntity> myCarts = <MyCartEntity>[].obs;

  final totalPrice = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    loadStaticData();
    _calculateTotalPrice();
  }

  void loadStaticData() {
    _myCarts = List.unmodifiable(_staticDataRepository.getMyCarts());
    myCarts(_myCarts);
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

  void checkOut() {
    if(myCarts.isNotEmpty) {
      AppNavigator.to.navigateToCheckOut(param: CheckOutScreenParam([], totalPrice.value));
    } else {
      CustomSnackbar.showWarning(message: 'Please add some products to your cart!');
    }
  }
}
