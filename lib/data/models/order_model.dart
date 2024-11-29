import 'package:furniture_shop_app/domain/entities/order_entity.dart';

class OrderModel extends OrderEntity {
  const OrderModel({
    super.no,
    super.date,
    super.quantity,
    super.state,
    super.totalAmount,
  });
}