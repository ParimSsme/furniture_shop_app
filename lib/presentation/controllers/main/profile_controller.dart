import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/widgets/app_contained_text_button.dart';
import 'package:furniture_shop_app/data/repositories/local_data_repository.dart';
import 'package:furniture_shop_app/domain/entities/user_entity.dart';
import 'package:get/get.dart';
import '../../../core/services/shared_preferences_service.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/app_navigator.dart';
import '../../../core/widgets/app_dialog.dart';
import '../../../data/datasources/local_data_source.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();

  final LocalDataRepository _localDataRepository;

  ProfileController()
      : _localDataRepository = LocalDataRepository(LocalDataSource());

  /// Static data
  Rx<UserEntity> user = const UserEntity().obs;

  @override
  void onInit() {
    super.onInit();
    loadStaticData();
  }

  void loadStaticData() {
    user.value = _localDataRepository.getUser() ?? const UserEntity();
  }

  void logout({
    required BuildContext context,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AppDialog(
          title: 'Log out',
          message: 'Are you sure you want to log out?',
          actions: [
            AppContainedTextButton(
              text: 'Yes',
              onPressed: () {
                SharedPreferencesService.to.loggedIn = false;
                AppNavigator.to.navigateToLogin();
              },
              backgroundColor: AppColors.success,
            ),
            AppContainedTextButton(
              text: 'No',
              onPressed: () => Get.back(),
              backgroundColor: AppColors.error,
            ),
          ],
        );
      },
    );
  }

  void onMyOrdersClick() => AppNavigator.to.navigateToMyOrders();

  void onShippingAddressClick() => AppNavigator.to.navigateToShippingAddress();

  void onPaymentMethodClick() => AppNavigator.to.navigateToPaymentMethod();

  void onMyReviewsClick() => AppNavigator.to.navigateToMyReviews();

  void onSettingsClick() => AppNavigator.to.navigateToSettings();
}
