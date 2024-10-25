import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop_app/common/widgets/furniture_icon_button.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final filterList = ['star', 'chair', 'table', 'sofa', 'bed', 'lamp'];
  @override
  Widget build(BuildContext context) {

    int selectedFilter = 3;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                Column(
                  children: [
                    Text('Make Home', style: kBodyNunitoTextStyle),
                    Text('BEAUTIFUL', style: kBlackGelasioMediumTitleStyle),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_outlined)),
              ],
            ),
            SizedBox(
              height: 80,
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                itemCount: filterList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ChoiceChip(
                    label: Image.asset('assets/images/${filterList[index]}.png'),
                    selected: true,
                    showCheckmark: false,
                    selectedColor: Colors.amber,
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 10,
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: List.generate(6, (index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.productDetail);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.bottomRight,
                            // height: 230,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/item1.jpg'),
                              fit: BoxFit.cover,
                            )),
                            child: FurnitureIconButton(
                              onClick: () {},
                              icon: Icons.ac_unit,
                            ),
                          ),
                        ),
                        Text('T', style: kBodyNunitoTextStyle),
                        Text('\$12', style: kBlackNunitoSmallTitleStyle),
                      ],
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
