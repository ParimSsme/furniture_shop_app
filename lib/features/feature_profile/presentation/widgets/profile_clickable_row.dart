import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/theme/app_text_theme.dart';
import '../../../../core/routes/app_routes.dart';

class ProfileClickableRow extends StatelessWidget {
  final String title;
  final String value;
  final String nextScreen;
  const ProfileClickableRow({
    super.key,
    required this.title,
    required this.value,
    required this.nextScreen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(nextScreen);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: kBlackNunitoSmallTitleStyle,),
                  Text(value, style: kBodyNunitoTextStyle,)
                ],
              ),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      ),
    );
  }
}