import '../../domain/entities/furniture_entity.dart';

class FurnitureDataModel extends FurnitureEntity {

  const FurnitureDataModel({
    super.id,
    super.name,
    super.image,
    super.description,
    super.price,
    super.rate,
    super.reviews,
    super.isFavourite,
    super.colors,
  });

}