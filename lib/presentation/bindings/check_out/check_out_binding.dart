import 'package:furniture_shop_app/presentation/controllers/check_out_controller.dart';
import 'package:get/get.dart';

class CheckOutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckOutController>(() => CheckOutController());
  }
}