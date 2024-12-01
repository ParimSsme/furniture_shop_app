import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop_app/presentation/controllers/main/home_controller.dart';
import 'package:get/get.dart';
import '../../../../../core/theme/app_colors.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.to;

    return ListView.separated(
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.horizontal,
      itemCount: controller.categories.length,
      itemBuilder: (_, int index) {
        return Obx(
          () => ChoiceChip(
            label: SvgPicture.asset(
              controller.categories[index].image,
              height: 25,
              width: 25,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                controller.selectedCategoryIndex == index
                    ? AppColors.selectedChipIcon
                    : AppColors.unselectedChipIcon,
                BlendMode.srcIn,
              ),
            ),
            selected: controller.selectedCategoryIndex == index,
            onSelected: (_) => controller.filterProducts(index),
          ),
        );
      },
      separatorBuilder: (_, __) => const SizedBox(width: 10),
    );
  }
}
