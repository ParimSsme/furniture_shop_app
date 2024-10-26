import 'package:flutter/cupertino.dart';
import 'package:furniture_shop_app/core/utils/custom_snackbar.dart';
import 'package:furniture_shop_app/core/utils/validators.dart';
import 'package:furniture_shop_app/domain/entities/user_entity.dart';
import 'package:get/get.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/services/shared_preferences_service.dart';
import '../../../data/datasources/local_data_source.dart';
import '../../../data/repositories/local_data_repository.dart';

class LoginController extends GetxController {
  static LoginController get to => Get.find();

  final LocalDataRepository _localDataRepository = LocalDataRepository(LocalDataSource());

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final RxBool _showPassword = false.obs;

  bool get showPassword => _showPassword.value;
  void toggleShowPassword() => _showPassword.toggle();

  void login() {
    final email = emailController.value.text;
    final password = passwordController.value.text;

    if (_validateCredentials(email, password)) {
      _successfulLogin();
    }
  }

  bool _validateCredentials(String email, String password) {
    if (Validators.isEmpty(email)) {
      CustomSnackbar.showWarning(message: 'Email is empty!');
      return false;
    } else if (!Validators.isValidEmail(email)) {
      CustomSnackbar.showWarning(message: 'Invalid email format!');
      return false;
    } else if (Validators.isEmpty(password)) {
      CustomSnackbar.showWarning(message: 'Password is empty!');
      return false;
    } else if (!Validators.isValidPassword(password)) {
      CustomSnackbar.showWarning(message: 'Invalid password format!');
      return false;
    }
    return true;
  }

  void _successfulLogin() {
    _localDataRepository.saveUser(
      userEntity: UserEntity(
        name: 'Mohammad',
        email: emailController.value.text,
      ),
    );
    SharedPreferencesService.to.loggedIn = true;
    Get.offAllNamed(AppRoutes.home);
  }

  void signUp() => Get.toNamed(AppRoutes.signUp);

  @override
  void onClose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    super.onClose();
  }
}
