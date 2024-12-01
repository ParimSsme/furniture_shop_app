import '../../domain/entities/product_entity.dart';

abstract class ProductDataModel extends ProductEntity {

  const ProductDataModel({
    super.id,
    super.name,
    super.images,
    super.description,
    super.price,
    super.rate,
    super.reviews,
    super.isFavourite,
    super.isPopular,
  });

}