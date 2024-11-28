import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop_app/core/assets/app_icon_assets.dart';
import 'package:furniture_shop_app/core/theme/app_text_theme.dart';
import 'package:furniture_shop_app/core/widgets/app_card.dart';
import 'package:furniture_shop_app/domain/entities/shipping_address_entity.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_check_box.dart';

class ShippingAddressListItem extends StatelessWidget {
  final ShippingAddressEntity entity;
  const ShippingAddressListItem({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCheckBox(value: entity.isSelected, onChanged: (val){}, label: 'Use as the shipping address'),
        const SizedBox(height: 5),
        AppCard(
          height: 125,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      entity.fullName,
                      style: kBlackNunitoSmallTitleStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    SvgPicture.asset(
                      AppIconAssets.edit,
                      height: 24,
                      width: 24,
                      fit: BoxFit.scaleDown,
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Text(
                  entity.address,
                  style: kBodyNunitoTextStyle.copyWith(
                    color: AppColors.textSecondary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
