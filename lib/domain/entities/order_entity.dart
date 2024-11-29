import 'package:equatable/equatable.dart';
import 'package:furniture_shop_app/core/enums/order_state.dart';

class OrderEntity extends Equatable {
  final int no;
  final String date;
  final int quantity;
  final OrderState state;
  final int totalAmount;

  const OrderEntity({
    this.no = 0,
    this.date = '',
    this.quantity = 0,
    this.state = OrderState.processing,
    this.totalAmount = 0,
  });

  @override
  List<Object?> get props => [
    no,
    date,
    quantity,
    state,
    totalAmount
  ];
}