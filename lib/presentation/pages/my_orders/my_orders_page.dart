import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/enums/order_state.dart';
import 'package:furniture_shop_app/presentation/controllers/my_orders_controller.dart';
import 'package:furniture_shop_app/presentation/pages/my_orders/widgets/my_order_list_item.dart';
import 'package:get/get.dart';

class MyOrdersPage extends GetView<MyOrdersController> {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.filterTabs.length,
      initialIndex: 0,
      child: Scaffold(
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
            "My order",
          ),
          bottom: TabBar(
            indicatorWeight: 2,
            indicatorPadding:
                const EdgeInsets.only(left: 16, right: 16, top: 43),
            onTap: controller.onTabClicked,
            tabs: OrderState.values
                .map(
                  (state) => Tab(
                    text: state.text, // Use the text from the extension
                  ),
                )
                .toList(),
          ),
        ),
        body: TabBarView(
          physics: const ClampingScrollPhysics(),
          children: [
            Obx(
              () => ListView.builder(
                itemCount: controller.orders.length,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return MyOrderListItem(
                    entity: controller.orders[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
