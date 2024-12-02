import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/core/params/screen/check_out_screen_param.dart';
import 'package:furniture_shop_app/core/widgets/app_contained_text_button.dart';
import 'package:furniture_shop_app/presentation/controllers/check_out/check_out_controller.dart';
import 'package:furniture_shop_app/presentation/pages/check_out/widgets/check_out_section_tile.dart';
import 'package:furniture_shop_app/presentation/pages/check_out/widgets/price_row.dart';
import 'package:get/get.dart';
import '../../../core/assets/app_icon_assets.dart';
import '../../../core/theme/app_text_theme.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CheckOutScreenParam param = Get.arguments as CheckOutScreenParam;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Check out'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CheckOutSectionTile(title: 'Shipping Address'),
              const SizedBox(height: 10),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Bruno Fernandes',
                        style: kBlackNunitoSmallTitleStyle,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.shade200,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        '25 rue Robert Latouche, Nice, 06200, Côte\nD’azur, France',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const CheckOutSectionTile(title: 'Payment'),
              const SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppIconAssets.disabledMasterCard),
                      const SizedBox(width: 20),
                      Text(
                        '**** **** **** 3947',
                        style: kBlackNunitoSmallTitleStyle,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const CheckOutSectionTile(title: 'Delivery method'),
              const SizedBox(height: 10),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppIconAssets.dhl),
                      const SizedBox(width: 20),
                      Text(
                        'Fast (2-3 days)',
                        style: kBlackNunitoSmallTitleStyle,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      PriceRow(label: 'Order:', value: param.totalPrice),
                      const SizedBox(height: 10),
                      const PriceRow(label: 'Delivery:', value: 5),
                      const SizedBox(height: 10),
                      PriceRow(
                        label: 'Total:',
                        value: param.totalPrice + 5,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              AppContainedTextButton(
                text: 'SUBMIT ORDER',
                onPressed: () => CheckOutController.to.submitOrder(),
              ),
            ],
          ).defaultScreenPadding(),
        ),
      ),
    );
  }

}

