import 'package:furniture_shop_app/domain/entities/shipping_address_entity.dart';
import 'package:get/get.dart';
import '../../../core/utils/app_navigator.dart';

class ShippingAddressListController extends GetxController {
  static ShippingAddressListController get to => Get.find();

  List<ShippingAddressEntity> shippingAddressList = const [
    ShippingAddressEntity(
        id: 0,
        fullName: 'Bruno Fernandes',
        address: '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
        isSelected: true
    ),
    ShippingAddressEntity(
        id: 1,
        fullName: 'Bruno Fernandes',
        address: '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
        isSelected: false
    ),
    ShippingAddressEntity(
        id: 2,
        fullName: 'Bruno Fernandes',
        address: '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
        isSelected: false
    ),
  ];

  void goToAddShippingAddress(){
    AppNavigator.to.navigateToAddShippingAddress();
  }
}