import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../common/widgets/tabs_main_wrapper.dart';
import '../../features/feature_auth/presentation/screens/login_screen.dart';
import '../../features/feature_auth/presentation/screens/signup_screen.dart';
import '../../features/feature_boarding/presentation/screens/boarding_screen.dart';
import '../../features/feature_favorites/presentation/screens/favorites_screen.dart';
import '../../features/feature_my_orders/presentation/screens/my_orders_screen.dart';
import '../../features/feature_my_reviews/presentation/screens/my_reviews_screen.dart';
import '../../features/feature_notifications/presentation/screens/notifications_screen.dart';
import '../../features/feature_product_detail/presentation/screens/product_detail_screen.dart';
import '../../features/feature_profile/presentation/screens/profile_screen.dart';
import '../../features/feature_settings/presentation/screens/settings_screen.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String home = '/home';
  static const String productDetail = '/productDetail';
  static const String favorites = '/favorites';
  static const String cart = '/cart';
  static const String checkOut = '/checkOut';
  static const String settings = '/settings';
  static const String notifications = '/notifications';
  static const String review = '/review';
  static const String profile = '/profile';
  static const String order = '/order';
  static const String shippingAddress = '/shippingAddress';
  static const String paymentMethod = '/paymentMethod';
  static const String myReviews = '/myReviews';
  static const String myOrders = '/myOrders';
  static const String addShippingAddress = '/addShippingAddress';
  static const String addPayment = '/addPayment';

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const TabsMainWrapper()),
    GetPage(name: myOrders, page: () => MyOrdersScreen()),
    GetPage(name: myReviews, page: () => const MyReviewsScreen()),
    GetPage(name: settings, page: () => const SettingsScreen()),
    GetPage(name: profile, page: () => const ProfileScreen()),
    GetPage(name: notifications, page: () => const NotificationsScreen()),
    GetPage(name: favorites, page: () => const FavoritesScreen()),
    GetPage(name: productDetail, page: () => const ProductDetailScreen()),
    GetPage(name: onboarding, page: () => const OnboardingScreen()),
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: signUp, page: () => const SignUpScreen()),
  ];
}
