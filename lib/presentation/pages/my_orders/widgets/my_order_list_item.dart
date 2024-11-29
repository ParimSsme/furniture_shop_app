import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/enums/order_state.dart';
import 'package:furniture_shop_app/core/theme/app_text_theme.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../domain/entities/order_entity.dart';

class MyOrderListItem extends StatelessWidget {
  final OrderEntity entity;
  const MyOrderListItem({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      height: 190,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order No${entity.no}",
                  style: kBlackNunitoSmallTitleStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  entity.date,
                  style: kGreyNunitoSmallTitleStyle.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
            child: Row(
              children: [
                Text(
                  "Quantity: ",
                  style: kGreyNunitoSmallTitleStyle,
                ),
                Text(
                  entity.quantity.toString().padLeft(2, '0'),
                  style: kBlackNunitoSmallTitleStyle,
                ),
                const Spacer(),
                Text(
                  "Total Amount: ",
                  style: kGreyNunitoSmallTitleStyle,
                ),
                Text(
                  "\$${entity.totalAmount}",
                  style: kBlackNunitoSmallTitleStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 110,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Detail",
                      style: kBlackNunitoSmallTitleStyle.copyWith(
                        color: AppColors.onPrimary,
                      ),
                    ),
                  ),
                ),
                Text(
                  entity.state.text,
                  style: kBlackNunitoSmallTitleStyle.copyWith(
                    color: entity.state.textColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
