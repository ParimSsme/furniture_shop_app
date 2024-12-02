import 'package:furniture_shop_app/presentation/controllers/check_out/congrats_controller.dart';
import 'package:get/get.dart';

class CongratsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CongratsController>(() => CongratsController());
  }
}