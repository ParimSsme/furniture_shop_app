import 'package:furniture_shop_app/core/params/screen/add_order_screen_param.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';

class NavigationService {
  static NavigationService get to => Get.find();

  void navigateToSplash() => Get.toNamed(AppRoutes.splash);

  void navigateToOnboarding() => Get.toNamed(AppRoutes.onboarding);

  void navigateToLogin() => Get.toNamed(AppRoutes.login);

  void navigateToSignUp() => Get.toNamed(AppRoutes.signUp);

  void navigateToHome() => Get.toNamed(AppRoutes.home);

  void navigateToProductDetail({
    required int id,
  }) =>
      Get.toNamed(AppRoutes.productDetail, arguments: id);

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

  void navigateToAddShippingAddress() =>
      Get.toNamed(AppRoutes.addShippingAddress);

  void navigateToAddPayment() => Get.toNamed(AppRoutes.addPayment);

  void navigateToAddOrder({
    required AddOrderScreenParam param,
  }) =>
      Get.toNamed(AppRoutes.addOrder, arguments: param);

}
