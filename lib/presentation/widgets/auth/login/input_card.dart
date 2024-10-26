import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../common/widgets/furniture_contained_text_button.dart';
import '../../../../config/theme/app_text_theme.dart';
import '../../../controllers/auth/login_controller.dart';
import '../../auth_text_field.dart';

class LoginInputCard extends StatelessWidget {
  const LoginInputCard({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final controller = LoginController.to;

    return Flexible(
      child: SizedBox(
        height: screenHeight * 0.6,
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
                TextButton(
                  onPressed: (){},
                  child: Text('Forgot Password', style: kButtonStyle),
                ),
                FurnitureContainedTextButton(
                  text: 'Log in',
                  onClick: controller.login,
                ),
                TextButton(
                  onPressed: controller.signUp,
                  child: Text(
                    'SIGN UP',
                    style: kButtonStyle.copyWith(color: const Color(0xff303030)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
