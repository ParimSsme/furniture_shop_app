import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/widgets/app_contained_text_button.dart';
import 'package:furniture_shop_app/presentation/controllers/auth/sign_up_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../core/theme/app_text_theme.dart';
import '../../../../core/widgets/app_card.dart';
import 'auth_text_field.dart';

class SignupInputCard extends StatelessWidget {
  const SignupInputCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final controller = SignUpController.to;

    return SizedBox(
      height: screenHeight * 0.7,
      child: AppCard(
        padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
        margin: const EdgeInsets.only(right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AuthTextField(
              controller: controller.nameController.value,
              label: 'Name',
              hint: 'Enter your name',
            ),
            AuthTextField(
              controller: controller.emailController.value,
              label: 'Email',
              hint: 'Enter your email',
            ),
            Obx(
              () => AuthTextField(
                controller: controller.passwordController.value,
                label: 'Password',
                hint: 'Enter your password',
                isPassword: controller.showPassword,
                suffix: IconButton(
                  onPressed: controller.toggleShowPassword,
                  icon: Icon(
                    controller.showPassword
                        ? Icons.remove_red_eye_outlined
                        : Icons.visibility_off,
                  ),
                ),
              ),
            ),
            Obx(
              () => AuthTextField(
                controller: controller.confirmPasswordController.value,
                label: 'Confirm Password',
                hint: 'Enter your confirm password',
                isPassword: controller.showConfirmPassword,
                suffix: IconButton(
                  onPressed: controller.toggleShowConfirmPassword,
                  icon: Icon(
                    controller.showConfirmPassword
                        ? Icons.remove_red_eye_outlined
                        : Icons.visibility_off,
                  ),
                ),
              ),
            ),
            AppContainedTextButton(
              text: 'SIGN UP',
              onPressed: controller.signUp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have account?',
                  style: kGreyNunitoSmallTitleStyle.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: controller.login,
                  style: TextButton.styleFrom(
                    textStyle: kTextButtonStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                  ),
                  child: const Text('SIGN IN'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
