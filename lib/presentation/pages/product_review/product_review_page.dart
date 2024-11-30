import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop_app/core/assets/app_icon_assets.dart';
import 'package:furniture_shop_app/core/assets/app_image_assets.dart';
import 'package:furniture_shop_app/core/theme/app_text_theme.dart';
import 'package:furniture_shop_app/presentation/controllers/product_review_controller.dart';
import 'package:furniture_shop_app/presentation/pages/product_review/widgets/product_review_list_item.dart';
import 'package:get/get.dart';

class ProductReviewPage extends GetView<ProductReviewController> {
  const ProductReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Rating & Review',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [

              /// Product Detail
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      AppImageAssets.desk2,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Minimal Stand",
                          style: kGreyNunitoSmallTitleStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 9.0),
                              child: SvgPicture.asset(
                                AppIconAssets.star,
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '4.5',
                              style: kBlackNunitoLargeTitleStyle.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "10 reviews",
                          style: kBlackMerriweatherSmallTitleStyle.copyWith(
                            fontSize: 17
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 10),
              const Divider(
                indent: 25,
                endIndent: 25,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: controller.reviews.length,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ProductReviewListItem(
                      entity: controller.reviews[index],
                    );
                  },
                  separatorBuilder: (_, __) => const SizedBox(height: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
