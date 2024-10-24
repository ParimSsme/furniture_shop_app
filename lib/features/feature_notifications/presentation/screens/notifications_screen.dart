import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/routes/app_routes.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                Text('Notification', style: kBlackNunitoSmallTitleStyle),
                const SizedBox(width: 50),
              ],
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.productDetail);
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/item1.jpg', height: 100, width: 100,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('T', style: kBodyNunitoTextStyle),
                            Text('\$12', style: kBlackNunitoSmallTitleStyle),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.cancel_outlined)),
                            IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag)),
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
