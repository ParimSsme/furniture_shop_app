import '../../domain/entities/furniture_entity.dart';

class FurnitureDataModel extends FurnitureEntity {

  const FurnitureDataModel({
    super.id = 0,
    super.name = '',
    super.image = '',
    super.description = '',
    super.price = 0,
    super.rate = 0.0,
    super.reviews = 0,
    super.isFavourite = false,
    super.colors = const [],
  });

}