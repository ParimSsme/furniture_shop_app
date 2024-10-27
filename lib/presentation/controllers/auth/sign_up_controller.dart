import 'package:flutter/cupertino.dart';
import 'package:furniture_shop_app/core/utils/custom_snackbar.dart';
import 'package:furniture_shop_app/core/utils/validators.dart';
import 'package:furniture_shop_app/domain/entities/user_entity.dart';
import 'package:get/get.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/services/navigation_service.dart';
import '../../../core/services/shared_preferences_service.dart';
import '../../../data/datasources/local_data_source.dart';
import '../../../data/repositories/local_data_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get to => Get.find();

  final LocalDataRepository _localDataRepository = LocalDataRepository(LocalDataSource());

  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;

  final RxBool _showPassword = false.obs;
  final RxBool _showConfirmPassword = false.obs;

  bool get showPassword => _showPassword.value;
  void toggleShowPassword() => _showPassword.toggle();

  bool get showConfirmPassword => _showConfirmPassword.value;
  void toggleShowConfirmPassword() => _showConfirmPassword.toggle();

  void signUp() {
    if (_validateCredentials()) {
      _successfulLogin();
    }
  }

  bool _validateCredentials() {

    final name = nameController.value.text;
    final email = emailController.value.text;
    final password = passwordController.value.text;
    final confirmPassword = confirmPasswordController.value.text;

    if (Validators.isEmpty(name)) {
      CustomSnackbar.showWarning(message: 'Name is empty!');
      return false;
    } else if (!Validators.isValidName(name)) {
      CustomSnackbar.showWarning(message: 'Invalid name format!');
      return false;
    } else if (Validators.isEmpty(email)) {
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
    } else if (Validators.isEmpty(confirmPassword)) {
      CustomSnackbar.showWarning(message: 'Confirm Password is empty!');
      return false;
    } else if (confirmPassword != password) {
      CustomSnackbar.showWarning(message: 'Incorrect confirm password!');
      return false;
    }
    return true;
  }

  void _successfulLogin() {
    _localDataRepository.saveUser(
      userEntity: UserEntity(
        name: nameController.value.text,
        email: emailController.value.text,
      ),
    );
    SharedPreferencesService.to.loggedIn = true;
    Get.offAllNamed(AppRoutes.home);
  }

  void login() => NavigationService.to.navigateToLogin();

  @override
  void onClose() {
    nameController.value.dispose();
    emailController.value.dispose();
    passwordController.value.dispose();
    confirmPasswordController.value.dispose();
    super.onClose();
  }
}