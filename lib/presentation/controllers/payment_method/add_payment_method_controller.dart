import 'package:furniture_shop_app/core/utils/app_navigator.dart';
import 'package:get/get.dart';

class AddPaymentMethodController extends GetxController {
  static AddPaymentMethodController get to => Get.find();

  final RxString cardHolderName = 'XXXXXX'.obs;
  final RxString expiryDate = 'XX/XX'.obs;
  final RxString cvv = 'XXX'.obs;
  final RxString lastFourDigits = 'XXXX'.obs;

  void onChangCardHolderName(String text) {
    if(text.isEmpty){
      cardHolderName('XXXXXX');
    } else {
      cardHolderName(text);
    }
  }

  void onChangCardNumber(String text) {
    if (text.length >= 16) {
      lastFourDigits(text.substring(15));
    } else {
      lastFourDigits('XXXX');
    }
  }

  void onChangCVV(String text){
    if (text.isEmpty) {
      cvv('XXX');
    } else {
      cvv(text);
    }
  }

  void onChangExpiryDate(String text) {
    if(text.isEmpty) {
      expiryDate('XX/XX');
    } else {
      expiryDate(text);
    }
  }

  void onAddNewCard() {
    AppNavigator.to.navigateToPaymentMethod();
  }
}
