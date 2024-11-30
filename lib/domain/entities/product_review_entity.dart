import 'package:equatable/equatable.dart';

class ProductReviewEntity extends Equatable {
  final int id;
  final String reviewerName;
  final String reviewerImage;
  final double rate;
  final String date;
  final String review;

  const ProductReviewEntity({
    this.id = -1,
    this.reviewerName = '',
    this.reviewerImage = '',
    this.rate = 0.0,
    this.date = '',
    this.review = '',
  });

  @override
  List<Object?> get props => [
    id,
    reviewerName,
    reviewerImage,
    rate,
    date,
    review,
  ];
}