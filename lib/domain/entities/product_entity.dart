import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ProductEntity extends Equatable {
  final int id;
  final int categoryId;
  final String name;
  final Map<Color, List<String>> images;
  final String description;
  final double price;
  final double rate;
  final int reviews;
  final bool isFavourite;
  final bool isPopular;

  const ProductEntity({
    this.id = 0,
    this.categoryId = 0,
    this.name = '',
    this.images = const {},
    this.description = '',
    this.price = 0,
    this.rate = 0.0,
    this.reviews = 0,
    this.isFavourite = false,
    this.isPopular = false,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        images,
        description,
        price,
        rate,
        reviews,
        isFavourite,
        isPopular,
      ];
}
