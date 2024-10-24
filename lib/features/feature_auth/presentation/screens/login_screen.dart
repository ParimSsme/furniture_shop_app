import 'package:flutter/material.dart';
import 'package:furniture_shop_app/common/widgets/furniture_contained_text_button.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import 'package:get/get.dart';
import '../../../../core/routes/app_routes.dart';
import '../widgets/auth_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final topSafeAreaPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: topSafeAreaPadding, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // top row
            Row(
              children: [
                const Expanded(child: Divider(thickness: 1.5),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset('assets/images/furniture_icon.png'),
                ),
                const Expanded(child: Divider(thickness: 1.5),),
              ],
            ),


            Text('Hello !', style: kGreyGelasioMediumTitleStyle,),
            Text('WELCOME BACK', style: kBlackGelasioLargeTitleStyle,),

            // input card
            Card(
              elevation: 15,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AuthTextField(label: 'Email' , hint: 'Enter your email'),
                    AuthTextField(label: 'Password' , hint: 'Enter your password', suffix: Icon(Icons.remove_red_eye_outlined)),
                    FurnitureContainedTextButton(text: 'Log in', onClick: (){
                      Get.offAllNamed(AppRoutes.home);
                    },),
                    TextButton(onPressed: (){
                      Get.toNamed(AppRoutes.signUp);
                    }, child: Text('SIGN UP', style: kButtonStyle),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
