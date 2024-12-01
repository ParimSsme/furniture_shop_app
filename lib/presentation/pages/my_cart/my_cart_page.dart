import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/core/widgets/app_contained_text_button.dart';
import 'package:furniture_shop_app/presentation/controllers/my_cart_controller.dart';
import 'package:furniture_shop_app/presentation/pages/my_cart/widgets/my_cart_list.dart';
import 'package:furniture_shop_app/presentation/pages/my_cart/widgets/promo_code_input.dart';
import 'package:get/get.dart';
import '../../../core/theme/app_text_theme.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = MyCartController.to;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('MyCart'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            /// My carts list
            Expanded(
              child: MyCartList(list: controller.myCarts),
            ),

            const PromoCodeInput(),

            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total:', style: kGreyGelasioMediumTitleStyle),
                  Obx(
                    () => Text(
                      '\$ ${controller.totalPrice.value}',
                      style: kBlackNunitoMediumTitleStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppContainedTextButton(
              text: 'Check out',
              onPressed: controller.checkOut,
            ),
          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}
