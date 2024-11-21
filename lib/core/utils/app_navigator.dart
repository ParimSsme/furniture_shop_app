import 'package:get/get.dart';
import '../routes/app_routes.dart';

class AppNavigator {
  static AppNavigator get to => Get.find();

  void navigateToSplash() => Get.toNamed(AppRoutes.splash);

  void navigateToOnboarding() => Get.toNamed(AppRoutes.onboarding);

  void navigateToLogin() => Get.toNamed(AppRoutes.login);

  void navigateToSignUp() => Get.toNamed(AppRoutes.signUp);

  void navigateToHome() => Get.toNamed(AppRoutes.home);

  void navigateToProductDetail() => Get.toNamed(AppRoutes.productDetail);

  void navigateToFavorites() => Get.toNamed(AppRoutes.favorites);

  void navigateToMyCart() => Get.toNamed(AppRoutes.myCart);

  void navigateToCheckOut() => Get.toNamed(AppRoutes.checkOut);

  void navigateToSettings() => Get.toNamed(AppRoutes.settings);

  void navigateToNotifications() => Get.toNamed(AppRoutes.notifications);

  void navigateToReview() => Get.toNamed(AppRoutes.review);

  void navigateToProfile() => Get.toNamed(AppRoutes.profile);

  void navigateToShippingAddress() => Get.toNamed(AppRoutes.shippingAddress);

  void navigateToPaymentMethod() => Get.toNamed(AppRoutes.paymentMethod);

  void navigateToMyReviews() => Get.toNamed(AppRoutes.myReviews);

  void navigateToMyOrders() => Get.toNamed(AppRoutes.myOrders);

  void navigateToAddShippingAddress() => Get.toNamed(AppRoutes.addShippingAddress);

  void navigateToAddPayment() => Get.toNamed(AppRoutes.addPayment);

  void navigateToAddOrder() => Get.toNamed(AppRoutes.addOrder);

  void navigateToCongrats() => Get.toNamed(AppRoutes.congrats);

}
