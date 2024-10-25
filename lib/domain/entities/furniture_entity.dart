import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class FurnitureEntity extends Equatable {
  final int id;
  final String name;
  final String image;
  final String description;
  final int price;
  final double rate;
  final int reviews;
  final bool isFavourite;
  final List<Color> colors;

  const FurnitureEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.rate,
    required this.reviews,
    required this.isFavourite,
    required this.colors,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        description,
        price,
        rate,
        reviews,
        isFavourite,
        colors,
      ];
}
