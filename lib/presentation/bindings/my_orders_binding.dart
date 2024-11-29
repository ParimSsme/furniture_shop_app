import 'package:furniture_shop_app/presentation/controllers/my_orders_controller.dart';
import 'package:get/get.dart';

class MyOrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyOrdersController>(() => MyOrdersController());
  }
}