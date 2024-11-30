import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_theme.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../domain/entities/product_review_entity.dart';

class ProductReviewListItem extends StatelessWidget {
  final ProductReviewEntity entity;
  const ProductReviewListItem({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: AppCard(
              height: 190,
              width: double.infinity,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          entity.reviewerName,
                          style: kBlackNunitoSmallTitleStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          entity.date,
                          style: kBodyNunitoTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    RatingBarIndicator(
                      rating: entity.rate,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 23.0,
                      direction: Axis.horizontal,
                    ),

                    Text(
                      entity.review,
                      maxLines: 5,
                      style: kBodyNunitoTextStyle.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// Reviewer image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                entity.reviewerImage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}