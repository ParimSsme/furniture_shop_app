import 'package:flutter/material.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 140,
        // padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order No238562312',
                    style: kBlackNunitoSmallTitleStyle,
                  ),
                  Text('20/03/2020'),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quantity:',
                      ),
                      Text(
                        '03',
                        style: kBlackNunitoSmallTitleStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Amount: '),
                      Text(
                        '\$150',
                        style: kBlackNunitoSmallTitleStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )
                  ),
                  child: Text(
                    'Detail ',
                    style: kBlackNunitoSmallTitleStyle.copyWith(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('Delivered', style: TextStyle(color: Colors.green),),
                ),
              ],
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
