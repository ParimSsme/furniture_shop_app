import 'package:flutter/material.dart';
import 'package:furniture_shop_app/presentation/controllers/shipping_address/shipping_address_list_controller.dart';
import 'package:furniture_shop_app/presentation/pages/shipping_address/widgets/shipping_address_list_item.dart';
import 'package:get/get.dart';

class ShippingAddressListPage extends StatelessWidget {
  ShippingAddressListPage({super.key});

  final _controller = ShippingAddressListController.to;

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
          'Shipping Address',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>  _controller.goToAddShippingAddress(),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView.separated(
        itemCount: _controller.shippingAddressList.length,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemBuilder: (context, index) {

          final shippingAddress = _controller.shippingAddressList[index];

          return ShippingAddressListItem(
            entity: shippingAddress,
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 30),
      ),
    );
  }
}