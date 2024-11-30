import 'package:furniture_shop_app/domain/entities/product_review_entity.dart';

abstract class ProductReviewModel extends ProductReviewEntity {

  const ProductReviewModel({
    super.id,
    super.reviewerName,
    super.reviewerImage,
    super.rate,
    super.date,
    super.review,
  });

}