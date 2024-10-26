import '../../domain/entities/my_cart_entity.dart';

class MyCartDataModel extends MyCartEntity {
  MyCartDataModel({
    super.id,
    super.image,
    super.name,
    super.price,
    super.productCount,
  });
}
