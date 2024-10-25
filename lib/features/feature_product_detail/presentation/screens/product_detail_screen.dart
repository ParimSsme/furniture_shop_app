import 'package:flutter/material.dart';
import 'package:furniture_shop_app/common/widgets/furniture_icon_button.dart';
import 'package:furniture_shop_app/common/widgets/furniture_contained_text_button.dart';
import 'package:furniture_shop_app/config/colors/furniture_colors.dart';
import 'package:get/get.dart';

import '../../../../config/theme/app_text_theme.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final int id = Get.arguments as int;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: screenHeight * 0.5,
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
                          'assets/images/pro1.jpg',
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
                          icon: Icon(Icons.arrow_back_ios_new),
                          onClick: () {},
                          backgroundColor: Colors.white,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset: const Offset(3, 0),
                                  blurRadius: 10,
                                  spreadRadius: 2.5,
                                )
                              ]),
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
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
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Minimal Stand $id', style: kBlackGelasioMediumTitleStyle),
                  Row(
                    children: [
                      Text('\$5', style: kBlackNunitoLargeTitleStyle),
                      const Spacer(),
                      FurnitureIconButton(
                        icon: Icon(Icons.add),
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
                        icon: Icon(Icons.minimize_outlined),
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
                      Text('4.5', style: kBlackNunitoSmallTitleStyle),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        '(50 reviews)',
                        style: kCaptionNunitoTextStyle,
                      ),
                    ],
                  ),
                  Text(
                    'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ',
                    style: kBodyNunitoTextStyle,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      FurnitureIconButton(
                          icon: Icon(Icons.access_alarm), onClick: () {}),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: FurnitureContainedTextButton(
                          onClick: () {},
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
