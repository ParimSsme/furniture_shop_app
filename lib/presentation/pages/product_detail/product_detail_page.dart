import 'package:flutter/material.dart';
import 'package:furniture_shop_app/presentation/controllers/product_detail_controller.dart';
import 'package:furniture_shop_app/presentation/pages/product_detail/widgets/detail_section.dart';
import 'package:furniture_shop_app/presentation/pages/product_detail/widgets/image_section.dart';
import 'package:get/get.dart';

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
              child: const ImageSection(),
            ),
          ),

          Expanded(
            child: DetailsSection(),
          ),

        ],
      ),
    );
  }
}
