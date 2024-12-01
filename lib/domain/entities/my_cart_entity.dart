import 'dart:ui';

import 'package:equatable/equatable.dart';

class MyCartEntity extends Equatable {
  final int id;
  final int productId;
  final String image;
  final String name;
  final double price;
  int productCount;

  MyCartEntity({
    this.id = -1,
    this.productId = -1,
    this.image = '',
    this.name = '',
    this.price = 0,
    this.productCount = 1,
  });

  @override
  List<Object?> get props => [
    id,
    productId,
    image,
    name,
    price,
    productCount
  ];
}