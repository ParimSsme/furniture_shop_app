import 'package:flutter/material.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import 'package:furniture_shop_app/domain/entities/my_cart_entity.dart';
import 'package:furniture_shop_app/presentation/controllers/my_cart_controller.dart';
import 'package:get/get.dart';
import '../../common/widgets/furniture_icon_button.dart';

class MyCartList extends StatelessWidget {
  final List<MyCartEntity> list;
  const MyCartList({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: list.length,
      itemBuilder: (_, int index) {
        return _MyCartListItem(entity: list[index]);
      },
      separatorBuilder: (_, __) => const Padding(
        padding: EdgeInsets.all(8.0),
        child: Divider(),
      ),
    );
  }
}

class _MyCartListItem extends StatelessWidget {
  final MyCartEntity entity;
  const _MyCartListItem({
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final controller = MyCartController.to;
    final productCount = entity.productCount.obs;

    return SizedBox(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              entity.image,
              width: 120,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                entity.name,
                style: kBodyNunitoTextStyle,
              ),
              Text(
                '\$ ${entity.price}',
                style: kBlackGelasioMediumTitleStyle,
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FurnitureIconButton(
                    icon: const Icon(Icons.add),
                    onClick: () {
                      controller.increaseProductCount(id: entity.id);
                      productCount.value = entity.productCount;
                    },
                    backgroundColor: Colors.grey.shade300,
                    size: IconButtonSize.small,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Obx(
                      () => Text(
                        '${productCount.value}',
                        style: kBlackNunitoSmallTitleStyle,
                      ),
                    ),
                  ),
                  FurnitureIconButton(
                    icon: const Icon(Icons.horizontal_rule),
                    onClick: () {
                      controller.reduceProductCount(id: entity.id);
                      productCount.value = entity.productCount;
                    },
                    backgroundColor: Colors.grey.shade300,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () => controller.removeMyCart(id: entity.id),
            icon: const Icon(Icons.cancel_outlined),
          )
        ],
      ),
    );
  }
}
