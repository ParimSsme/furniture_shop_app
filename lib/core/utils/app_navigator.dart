import 'package:get/get.dart';
import '../params/screen/check_out_screen_param.dart';
import '../routes/app_routes.dart';

class AppNavigator {
  static AppNavigator get to => Get.find();

  void navigateToSplash() => Get.toNamed(AppRoutes.splash);

  void navigateToOnboarding() => Get.toNamed(AppRoutes.onboarding);

  void navigateToLogin() => Get.toNamed(AppRoutes.login);

  void navigateToSignUp() => Get.toNamed(AppRoutes.signUp);

  void navigateToHome() => Get.toNamed(AppRoutes.home);

  void navigateToProductDetail({
    required int id,
  }) =>
      Get.toNamed(AppRoutes.productDetail, arguments: id);

  void navigateToProductReview() => Get.toNamed(AppRoutes.productReview);

  void navigateToFavorites() => Get.toNamed(AppRoutes.favorites);

  void navigateToMyCart() => Get.toNamed(AppRoutes.myCart);

  void navigateToSettings() => Get.toNamed(AppRoutes.settings);

  void navigateToNotifications() => Get.toNamed(AppRoutes.notifications);

  void navigateToReview() => Get.toNamed(AppRoutes.review);

  void navigateToProfile() => Get.toNamed(AppRoutes.profile);

  void navigateToShippingAddress() => Get.toNamed(AppRoutes.shippingAddress);

  void navigateToPaymentMethod() => Get.toNamed(AppRoutes.paymentMethod);

  void navigateToAddPaymentMethod() => Get.toNamed(AppRoutes.addPaymentMethod);

  void navigateToMyReviews() => Get.toNamed(AppRoutes.myReviews);

  void navigateToMyOrders() => Get.toNamed(AppRoutes.myOrders);

  void navigateToAddShippingAddress() =>
      Get.toNamed(AppRoutes.addShippingAddress);

  void navigateToAddPayment() => Get.toNamed(AppRoutes.addPayment);

  void navigateToCheckOut({
    required CheckOutScreenParam param,
  }) =>
      Get.toNamed(AppRoutes.checkOut, arguments: param);

  void navigateToCongrats() => Get.toNamed(AppRoutes.congrats);
}
