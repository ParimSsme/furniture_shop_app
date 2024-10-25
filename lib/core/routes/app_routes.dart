import 'package:furniture_shop_app/presentation/pages/intro/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../presentation/bindings/home_binding.dart';
import '../../presentation/bindings/product_detail_binding.dart';
import '../../presentation/pages/main/bottom_navigation.dart';
import '../../features/feature_auth/presentation/screens/login_screen.dart';
import '../../features/feature_auth/presentation/screens/signup_screen.dart';
import '../../presentation/pages/intro/boarding_screen.dart';
import '../../presentation/pages/main/favorites_page.dart';
import '../../features/feature_my_orders/presentation/screens/my_orders_screen.dart';
import '../../features/feature_my_reviews/presentation/screens/my_reviews_screen.dart';
import '../../presentation/pages/main/notifications_page.dart';
import '../../presentation/pages/product_detail_page.dart';
import '../../presentation/pages/main/profile_page.dart';
import '../../features/feature_settings/presentation/screens/settings_screen.dart';
import '../middleware/auth_middleware.dart';

class AppRoutes {
  static const String splash = '/';
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
    GetPage(
      name: splash,
      page: () => const SplashPage(),
      middlewares: [AuthMiddleware()], // Apply middleware to splash
    ),
    GetPage(
      name: home,
      page: () => const BottomNavigation(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(name: myOrders, page: () => MyOrdersScreen()),
    GetPage(name: myReviews, page: () => const MyReviewsScreen()),
    GetPage(name: settings, page: () => const SettingsScreen()),
    GetPage(name: profile, page: () => const ProfilePage()),
    GetPage(name: notifications, page: () => const NotificationsPage()),
    GetPage(name: favorites, page: () => const FavoritesPage()),
    GetPage(name: productDetail, page: () => const ProductDetailPage(), binding: ProductDetailBinding(),),
    GetPage(name: onboarding, page: () => const OnboardingScreen()),
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: signUp, page: () => const SignUpScreen()),
  ];
}
