
import 'package:furniture_shop_app/domain/entities/payment_method_entity.dart';

class PaymentMethodModel extends PaymentMethodEntity {
  const PaymentMethodModel({
    super.id,
    super.image,
    super.cardNumberLastFourDigits,
    super.cardHolderName,
    super.expiryDate,
    super.isSelected,
  });
}