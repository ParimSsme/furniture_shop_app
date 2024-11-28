import 'package:get/get.dart';
import '../../controllers/payment_method/add_payment_method_controller.dart';

class AddPaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPaymentMethodController>(() => AddPaymentMethodController());
  }
}