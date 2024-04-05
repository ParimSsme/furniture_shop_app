import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_shop_app/common/utils/extensions/widget.dart';
import 'package:furniture_shop_app/features/feature_my_orders/presentation/widgets/order_list_item.dart';

class MyOrdersScreen extends StatelessWidget {
  MyOrdersScreen({super.key});

  final List<String> filterTabs = [
    'Delivered',
    'Processing',
    'Canceled',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
                onTap: (index) {
                  // controller.filter(type: controller.filterTabs[index]);
                },
                tabs: filterTabs.map((tab) => Text(tab)).toList(),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return OrderListItem();
                  },
                  separatorBuilder: (_, __){
                    return SizedBox(height: 10,);
                  },
                ),
              ),
            ],
          ),
        ).defaultScreenPadding(),
      ),
    );
  }
}
