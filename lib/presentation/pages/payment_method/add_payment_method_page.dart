import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/assets/app_icon_assets.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/core/widgets/app_contained_text_button.dart';
import 'package:furniture_shop_app/core/widgets/app_text_field.dart';
import 'package:furniture_shop_app/domain/entities/payment_method_entity.dart';
import 'package:furniture_shop_app/presentation/pages/payment_method/widgets/payment_card_widget.dart';
import 'package:get/get.dart';
import '../../../core/utils/formatters/payment_card_formatter.dart';
import '../../../core/utils/formatters/date_formatter.dart';
import '../../controllers/payment_method/add_payment_method_controller.dart';

class AddPaymentMethodPage extends StatelessWidget {
  AddPaymentMethodPage({super.key});

  final _controller = AddPaymentMethodController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Add payment method",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(
            () {
              return PaymentCardWidget(
                entity: PaymentMethodEntity(
                  image: AppIconAssets.masterCard,
                  cardHolderName: _controller.cardHolderName.value,
                  expiryDate: _controller.expiryDate.value,
                  cardNumberLastFourDigits: _controller.lastFourDigits.value,
                  isSelected: true,
                ),
              );
            },
          ),
          const SizedBox(height: 30),
          AppTextField(
            title: "CardHolder Name",
            hint: "Ex: Bruno Pham",
            onChanged: _controller.onChangCardHolderName,
          ),
          AppTextField(
            title: "Card Number",
            hint: "Ex: XXXX XXXX XXXX 3456",
            maxLength: 20,
            inputFormatters: [
              PaymentCardFormatter(),
            ],
            onChanged: _controller.onChangCardNumber,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  title: "CVV",
                  hint: "Ex: 123",
                  maxLength: 3,
                  obscureText: true,
                  onChanged: _controller.onChangCVV,
                ),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: AppTextField(
                  title: "Expiration Date",
                  hint: "Ex: 03/22",
                  maxLength: 5,
                  inputFormatters: [
                    DateFormatter(),
                  ],
                  onChanged: _controller.onChangExpiryDate,
                ),
              ),
            ],
          ),
          const Spacer(),
          AppContainedTextButton(
            onPressed: () => _controller.onAddNewCard(),
            text: "ADD NEW CARD",
          ),
        ],
      ).defaultScreenPadding(),
    );
  }
}
