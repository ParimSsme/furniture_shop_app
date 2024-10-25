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
    this.id = 0,
    this.name = '',
    this.image = '',
    this.description = '',
    this.price = 0,
    this.rate = 0.0,
    this.reviews = 0,
    this.isFavourite = false,
    this.colors = const [],
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
