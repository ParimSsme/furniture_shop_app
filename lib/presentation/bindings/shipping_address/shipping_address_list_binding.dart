import 'package:furniture_shop_app/presentation/controllers/shipping_address/shipping_address_list_controller.dart';
import 'package:get/get.dart';

class ShippingAddressListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShippingAddressListController>(() => ShippingAddressListController());
  }
}