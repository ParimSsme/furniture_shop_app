import 'dart:ui';
import 'package:get/get.dart';
import '../../../core/assets/app_icon_assets.dart';
import '../../../domain/entities/payment_method_entity.dart';

class PaymentMethodListController extends GetxController {
  static PaymentMethodListController get to => Get.find();

  List<PaymentMethodEntity> paymentList = const [
    PaymentMethodEntity(
      id: 0,
      backgroundColor: Color(0xff222222),
      image: AppIconAssets.masterCard,
      cardNumberLastFourDigits: 3947,
      cardHolderName: 'Jennyfer Doe',
      expiryDate: '05/23',
      isSelected: true
    ),
    PaymentMethodEntity(
      id: 1,
      backgroundColor: Color(0xff999999),
      image: AppIconAssets.visa,
        cardNumberLastFourDigits: 2645,
      cardHolderName: 'Jennyfer Doe',
      expiryDate: '05/23',
      isSelected: false
    ),
  ];

}
