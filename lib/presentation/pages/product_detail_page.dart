import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/common/widgets/furniture_icon_button.dart';
import 'package:furniture_shop_app/common/widgets/furniture_contained_text_button.dart';
import 'package:furniture_shop_app/core/assets/app_svg_assets.dart';
import 'package:furniture_shop_app/presentation/controllers/product_detail_controller.dart';
import 'package:get/get.dart';
import '../../config/theme/app_text_theme.dart';
import '../../core/constants/app_colors.dart';

class ProductDetailPage extends GetView<ProductDetailController> {
  const ProductDetailPage({
    super.key,
  });

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
                    right: 0,
                    top: 0,
                    bottom: 0,
                    left: 20,
                    child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                        ),
                        child: Image.asset(
                          controller.furniture.image,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    top: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FurnitureIconButton(
                          icon: const Icon(Icons.arrow_back_ios_new),
                          onClick: () {},
                          backgroundColor: Colors.white,
                        ),
                        Container(
                          height: 200,
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
                                )
                              ]),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List<Widget>.generate(
                                  controller.furniture.colors.length, (index) {
                                return Container(
                                  height: 34,
                                  width: 34,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 5, color: Colors.grey.shade400),
                                    color: controller.furniture.colors[index],
                                  ),
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                );
                              })),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(controller.furniture.name,
                      style: kBlackGelasioMediumTitleStyle),
                  Row(
                    children: [
                      Text('\$ ${controller.furniture.price}',
                          style: kBlackNunitoLargeTitleStyle),
                      const Spacer(),
                      FurnitureIconButton(
                        icon: const Icon(Icons.add),
                        onClick: () {},
                        backgroundColor: Colors.grey.shade300,
                        size: IconButtonSize.small,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          '01',
                          style: kBlackNunitoSmallTitleStyle,
                        ),
                      ),
                      FurnitureIconButton(
                        icon: const Icon(Icons.horizontal_rule),
                        onClick: () {},
                        backgroundColor: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('${controller.furniture.rate}',
                          style: kBlackNunitoSmallTitleStyle),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        '(${controller.furniture.reviews} reviews)',
                        style: kCaptionNunitoTextStyle,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        controller.furniture.description,
                        style: kBodyNunitoTextStyle,
                      ),
                    ),
                  ),
                  // const Spacer(),
                  Row(
                    children: [
                      FurnitureIconButton(
                        icon: SvgPicture.asset(
                          AppSvgAssets.favourite,
                          colorFilter: const ColorFilter.mode(
                            AppColors.iconColor,
                            BlendMode.srcIn,
                          ),
                        ),
                        onClick: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: FurnitureContainedTextButton(
                          onClick: controller.onAddToCart,
                          text: 'Add to Cart',
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
