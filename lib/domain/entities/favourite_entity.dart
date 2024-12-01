import 'package:equatable/equatable.dart';

class FavouriteEntity extends Equatable {
  final int id;
  final int productId;
  final String image;
  final String name;
  final int price;

  const FavouriteEntity({
    this.id = -1,
    this.productId = -1,
    this.image = '',
    this.name = '',
    this.price = 0,
  });

  @override
  List<Object?> get props => [
    id,
    productId,
    image,
    name,
    price,
  ];
}