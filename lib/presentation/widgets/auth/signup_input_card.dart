import 'package:flutter/material.dart';
import 'package:furniture_shop_app/presentation/controllers/auth/sign_up_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../common/widgets/furniture_contained_text_button.dart';
import '../../../config/theme/app_text_theme.dart';
import '../auth_text_field.dart';

class SignupInputCard extends StatelessWidget {
  const SignupInputCard({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final controller = SignUpController.to;

    return Flexible(
      child: SizedBox(
        height: screenHeight * 0.7,
        child: Card(
          elevation: 15,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                FurnitureContainedTextButton(
                  text: 'SIGN UP',
                  onClick: controller.signUp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have account?'),
                    TextButton(
                      onPressed: controller.login,
                      child: Text(
                        'SIGN IN',
                        style: kButtonStyle.copyWith(color: const Color(0xff303030)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}