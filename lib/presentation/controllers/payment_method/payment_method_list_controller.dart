import 'package:furniture_shop_app/core/utils/app_navigator.dart';
import 'package:get/get.dart';
import '../../../core/assets/app_icon_assets.dart';
import '../../../domain/entities/payment_method_entity.dart';

class PaymentMethodListController extends GetxController {
  static PaymentMethodListController get to => Get.find();

  List<PaymentMethodEntity> paymentList = const [
    PaymentMethodEntity(
      id: 0,
      image: AppIconAssets.masterCard,
      cardNumberLastFourDigits: '3947',
      cardHolderName: 'Jennyfer Doe',
      expiryDate: '05/23',
      isSelected: true
    ),
    PaymentMethodEntity(
      id: 1,
      image: AppIconAssets.visaCard,
        cardNumberLastFourDigits: '2645',
      cardHolderName: 'Jennyfer Doe',
      expiryDate: '05/23',
      isSelected: false
    ),
  ];

  void goToAddPaymentMethod(){
    AppNavigator.to.navigateToAddPaymentMethod();
  }
}
