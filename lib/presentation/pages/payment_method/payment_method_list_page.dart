import 'package:flutter/material.dart';
import 'package:furniture_shop_app/presentation/pages/payment_method/widgets/payment_card_list_item.dart';
import 'package:get/get.dart';
import '../../controllers/payment_method/payment_method_list_controller.dart';

class PaymentMethodListPage extends StatelessWidget {
  PaymentMethodListPage({super.key});

  final PaymentMethodListController _controller =
      PaymentMethodListController.to;

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
          "Payment method",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView.separated(
        itemCount: _controller.paymentList.length,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        itemBuilder: (context, index) {
          final paymentItem = _controller.paymentList[index];

          return PaymentCardListItem(
            entity: paymentItem,
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 20),
      ),
    );
  }
}
