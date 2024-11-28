import 'package:get/get.dart';
import '../../../core/utils/app_navigator.dart';

class AddShippingAddressController extends GetxController {
  static AddShippingAddressController get to => Get.find();

  final RxString fullName = ''.obs;
  final RxString address = ''.obs;
  final RxString zipCode = 'Pham Cong Thanh'.obs;
  final RxString country = ''.obs;
  final RxString city = 'New York'.obs;
  final RxString district = ''.obs;

  void onChangFullName(String text) => fullName(text);

  void onChangAddress(String text) => address(text);

  void onChangZipCode(String text) => zipCode(text);

  void onChangCountry(String text) => country(text);

  void onChangCity(String text) => city(text);

  void onChangDistrict(String text) => district(text);

  void onAddNewAddress() {
    AppNavigator.to.navigateToShippingAddress();
  }
}