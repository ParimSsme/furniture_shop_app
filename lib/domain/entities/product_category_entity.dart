import 'package:equatable/equatable.dart';

class ProductCategoryEntity extends Equatable {
  final int id;
  final String image;

  const ProductCategoryEntity({
    this.id = -1,
    this.image = '',
  });

  @override
  List<Object?> get props => [
    id,
    image,
  ];
}