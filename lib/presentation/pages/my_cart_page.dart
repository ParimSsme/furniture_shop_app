import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/presentation/controllers/my_cart_controller.dart';
import 'package:furniture_shop_app/presentation/widgets/my_cart_list.dart';
import 'package:get/get.dart';
import '../../common/widgets/furniture_contained_text_button.dart';
import '../../config/theme/app_text_theme.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = MyCartController.to;
    controller.loadData();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text('MyCart', style: kBlackGelasioMediumTitleStyle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Obx(() => MyCartList(list: controller.myCarts.value)),
            ),

            const _PromoCodeInput(),

            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total:', style: kGreyGelasioMediumTitleStyle),
                  Obx(() => Text(
                    '\$ ${controller.totalPrice.value}',
                    style: kBlackGelasioMediumTitleStyle,
                  )),
                ],
              ),
            ),

            FurnitureContainedTextButton(
              text: 'Check out',
              onClick: controller.checkOut,
            ),
          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}

class _PromoCodeInput extends StatelessWidget {
  const _PromoCodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      shadowColor: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(20),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
            padding: const EdgeInsets.all(18),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color(0xff242424)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          ),
          hintText: 'Enter your promo code',
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: Colors.white, width: 3.0),
          ),
        ),
      ),
    );
  }
}

