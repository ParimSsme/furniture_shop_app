import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../core/widgets/app_icon_button.dart';
import '../../../controllers/product_detail_controller.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          left: 25,
          child: _ImageSlider(),
        ),

        Positioned(
          left: 0,
          bottom: 0,
          top: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              /// Back button
              Card(
                elevation: 5,
                shadowColor: Colors.grey,
                child: AppIconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onClick: () => ProductDetailController.to.onBack(),
                  backgroundColor: Colors.white,
                ),
              ),

              _ColorSelector(),

            ],
          ),
        ),
      ],
    );
  }
}

class _ColorSelector extends StatelessWidget {
  _ColorSelector();

  final controller = ProductDetailController.to;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          children: controller.furniture.images.keys.map((color) {
            return GestureDetector(
              onTap: () => controller.selectedColor.value = color,
              child: AnimatedContainer(
                height: 34,
                width: 34,
                duration: const Duration(milliseconds: 400),
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 5,
                    color: controller.selectedColor.value == color
                        ? const Color(0xff909090)
                        : const Color(0xfff0f0f0),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _ImageSlider extends StatelessWidget {
  _ImageSlider();

  final ProductDetailController controller = ProductDetailController.to;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned(
          right: 0,
          top: 0,
          left: 0,
          bottom: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
            ),
            child: SizedBox(
              height: size.height * 0.6,
              width: size.width - 50,
              child: Obx(() => PageView.builder(
                controller: controller.pageController,
                itemCount: controller.furniture.images[controller.selectedColor]?.length,
                onPageChanged: (index) {
                  controller.imageIndex.value = index;
                },
                itemBuilder: (context, index) {
                  return Image.asset(
                    controller.furniture.images[controller.selectedColor]?[index] ?? '',
                    fit: BoxFit.cover,
                  );
                },
              ),),
            ),
          ),
        ),
        Positioned(
          right: 35,
          bottom: 30,
          child: Obx(
            () => (controller.furniture.images[controller.selectedColor]?.length ?? 1) > 1 ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.furniture.images[controller.selectedColor]?.length ?? 0,
                (index) => Container(
                  margin: const EdgeInsets.all(4.0),
                  width: controller.imageIndex.value == index ? 30 : 15,
                  height: 8.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: controller.imageIndex.value == index
                        ? const Color(0xff303030)
                        : const Color(0xfff0f0f0),
                  ),
                ),
              ),
            ) : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
