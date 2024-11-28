import 'package:furniture_shop_app/presentation/controllers/payment_method/payment_method_list_controller.dart';
import 'package:get/get.dart';

class PaymentMethodListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentMethodListController>(() => PaymentMethodListController());
  }
}