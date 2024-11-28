import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_theme.dart';
import '../../../../core/widgets/app_check_box.dart';
import '../../../../domain/entities/payment_method_entity.dart';
import '../painters/payment_card_painter.dart';

class PaymentCardListItem extends StatelessWidget {
  final PaymentMethodEntity entity;
  const PaymentCardListItem({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: CustomPaint(
            painter: PaymentCardPainter(
              color: entity.isSelected
                  ? AppColors.selectedPaymentCardBackground
                  : AppColors.unselectedPaymentCardBackground,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(entity.image),
                  Text(
                    '* * * * * * * * * * * * ${entity.cardNumberLastFourDigits}',
                    style: kGreyNunitoMediumTitleStyle.copyWith(
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Holder Name',
                            style: kBlackNunitoSmallTitleStyle.copyWith(
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            entity.cardHolderName,
                            style: kGreyNunitoMediumTitleStyle.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Expiry Date',
                            style: kBlackNunitoSmallTitleStyle.copyWith(
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            entity.expiryDate,
                            style: kGreyNunitoMediumTitleStyle.copyWith(
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        AppCheckBox(
          value: entity.isSelected,
          onChanged: (_) {},
          label: 'Use as default payment method',
        ),
      ],
    );
  }
}