import 'package:equatable/equatable.dart';

class MyCartEntity extends Equatable {
  final int id;
  final String image;
  final String name;
  final double price;
  int productCount;

  MyCartEntity({
    this.id = -1,
    this.image = '',
    this.name = '',
    this.price = 0,
    this.productCount = 0,
  });

  @override
  List<Object?> get props => [
    id,
    image,
    name,
    price,
    productCount
  ];
}