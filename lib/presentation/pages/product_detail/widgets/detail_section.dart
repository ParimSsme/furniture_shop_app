import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop_app/presentation/controllers/product_detail_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../core/assets/app_icon_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_theme.dart';
import '../../../../core/widgets/app_contained_text_button.dart';
import '../../../../core/widgets/app_icon_button.dart';

class DetailsSection extends StatelessWidget {
  DetailsSection({super.key});

  final controller = ProductDetailController.to;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          _TitleAndPrice(),

          /// Rating and Reviews
          GestureDetector(
            onTap: controller.navigateToProductReviewScreen,
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                const SizedBox(width: 10),
                Text('${controller.furniture.rate}',
                    style: kBlackNunitoSmallTitleStyle),
                const SizedBox(width: 30),
                Text('(${controller.furniture.reviews} reviews)',
                    style: kCaptionNunitoTextStyle),
              ],
            ),
          ),

          /// Description
          Expanded(
            child: Center(
              child: Text(
                controller.furniture.description,
                style: kBodyNunitoTextStyle,
              ),
            ),
          ),


          /// Actions
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIconButton(
                icon: SvgPicture.asset(
                  AppIconAssets.favourite,
                  colorFilter:
                  const ColorFilter.mode(AppColors.icon, BlendMode.srcIn),
                ),
                onClick: controller.onAddToFavorite,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: AppContainedTextButton(
                  onPressed: controller.onAddToCart,
                  text: 'Add to Cart',
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

class _TitleAndPrice extends StatelessWidget {
  _TitleAndPrice();

  final controller = ProductDetailController.to;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(controller.furniture.name, style: kBlackGelasioMediumTitleStyle),
        Row(
          children: [
            Text('\$${controller.furniture.price}',
                style: kBlackNunitoLargeTitleStyle),
            const Spacer(),
            AppIconButton(
              icon: const Icon(Icons.add),
              onClick: controller.increaseProductCount,
              backgroundColor: Colors.grey.shade300,
              size: IconButtonSize.small,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Obx(() => Text('${controller.productCount}',
                  style: kBlackNunitoSmallTitleStyle)),
            ),
            AppIconButton(
              icon: const Icon(Icons.horizontal_rule),
              onClick: controller.reduceProductCount,
              backgroundColor: Colors.grey.shade300,
            ),
          ],
        ),
      ],
    );
  }
}