import 'package:furniture_shop_app/presentation/controllers/shipping_address/add_shipping_address_controller.dart';
import 'package:get/get.dart';

class AddShippingAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddShippingAddressController>(() => AddShippingAddressController());
  }
}