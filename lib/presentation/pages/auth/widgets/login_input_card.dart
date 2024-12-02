import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/widgets/app_card.dart';
import 'package:furniture_shop_app/core/widgets/app_contained_text_button.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../controllers/auth/login_controller.dart';
import 'auth_text_field.dart';

class LoginInputCard extends StatelessWidget {
  const LoginInputCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final controller = LoginController.to;

    return Flexible(
      child: SizedBox(
        height: screenHeight * 0.6,
        child: AppCard(
          padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
          margin: const EdgeInsets.only(right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password'),
                    ),
                    AppContainedTextButton(
                      text: 'Log in',
                      onPressed: controller.login,
                    ),
                    TextButton(
                      onPressed: controller.signUp,
                      child: const Text('SIGN UP'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
