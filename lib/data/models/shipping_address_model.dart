import 'package:furniture_shop_app/domain/entities/shipping_address_entity.dart';

abstract class ShippingAddressModel extends ShippingAddressEntity {

  const ShippingAddressModel({
    super.id,
    super.fullName,
    super.address,
    super.zipCode,
    super.country,
    super.city,
    super.district,
    super.isSelected,
  });

}