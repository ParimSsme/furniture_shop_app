import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/core/widgets/app_contained_text_button.dart';
import 'package:furniture_shop_app/core/widgets/app_icon_button.dart';
import 'package:furniture_shop_app/presentation/controllers/product_detail_controller.dart';
import 'package:get/get.dart';
import '../../../core/assets/app_icon_assets.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_theme.dart';

class ProductDetailPage extends GetView<ProductDetailController> {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final int id = Get.arguments as int;
    controller.loadData(id: id);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: screenHeight * 0.6,
              width: screenWidth * 0.86,
              child: Stack(
                children: [
                  Positioned(
                    left: 25,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Obx(
                          () => ProductImageView(
                        imagesList: controller.furniture.images[controller.selectedColor] ?? [],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    top: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppIconButton(
                          icon: const Icon(Icons.arrow_back_ios_new),
                          onClick: () => Get.back(),
                          backgroundColor: Colors.white,
                        ),
                        Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(3, 0),
                                blurRadius: 10,
                                spreadRadius: 2.5,
                              ),
                            ],
                          ),
                          child: Obx(
                                () => Column(
                              children: [
                                for (int i = 0; i < controller.furniture.images.keys.length; i++)
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectedColor.value = controller.furniture.images.keys.toList()[i];
                                    },
                                    child: AnimatedContainer(
                                      height: 34,
                                      width: 34,
                                      duration: const Duration(milliseconds: 400),
                                      margin: const EdgeInsets.symmetric(vertical: 15),
                                      decoration: BoxDecoration(
                                        color: controller.furniture.images.keys.toList()[i],
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 5,
                                          color: (controller.selectedColor.value ==
                                              controller.furniture.images.keys.toList()[i])
                                              ? const Color(0xff909090)
                                              : const Color(0xfff0f0f0),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(controller.furniture.name, style: kBlackGelasioMediumTitleStyle),
                  Row(
                    children: [
                      Text('\$ ${controller.furniture.price}', style: kBlackNunitoLargeTitleStyle),
                      const Spacer(),
                      AppIconButton(
                        icon: const Icon(Icons.add),
                        onClick: controller.increaseProductCount,
                        backgroundColor: Colors.grey.shade300,
                        size: IconButtonSize.small,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Obx(
                              () => Text(
                            '${controller.productCount}',
                            style: kBlackNunitoSmallTitleStyle,
                          ),
                        ),
                      ),
                      AppIconButton(
                        icon: const Icon(Icons.horizontal_rule),
                        onClick: controller.reduceProductCount,
                        backgroundColor: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: controller.navigateToProductReviewScreen,
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber),
                        const SizedBox(width: 10),
                        Text('${controller.furniture.rate}', style: kBlackNunitoSmallTitleStyle),
                        const SizedBox(width: 30),
                        Text(
                          '(${controller.furniture.reviews} reviews)',
                          style: kCaptionNunitoTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        controller.furniture.description,
                        style: kBodyNunitoTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIconButton(
                        icon: SvgPicture.asset(
                          AppIconAssets.favourite,
                          colorFilter: const ColorFilter.mode(
                            AppColors.icon,
                            BlendMode.srcIn,
                          ),
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
            ),
          ),
        ],
      ),
    );
  }
}

class ProductImageView extends StatelessWidget {
  final List<String> imagesList;
  final ProductDetailController _controller = ProductDetailController.to;

  ProductImageView({super.key, required this.imagesList});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: Hero(
            tag: imagesList[0],
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              child: SizedBox(
                height: size.height * 0.6,
                width: size.width - 50,
                child: PageView.builder(
                  controller: _controller.pageController,
                  itemCount: imagesList.length,
                  onPageChanged: (index) {
                    _controller.imageIndex.value = index;
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(
                      imagesList[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 35,
          bottom: 30,
          child: Obx(
                () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                imagesList.length,
                    (index) => Container(
                  margin: const EdgeInsets.all(4.0),
                  width: _controller.imageIndex.value == index ? 30 : 15,
                  height: 8.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: _controller.imageIndex.value == index
                        ? const Color(0xff303030)
                        : const Color(0xfff0f0f0),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

