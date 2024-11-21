import 'package:furniture_shop_app/presentation/bindings/auth/login_binding.dart';
import 'package:furniture_shop_app/presentation/bindings/auth/sign_up_binding.dart';
import 'package:furniture_shop_app/presentation/bindings/main/profile_binding.dart';
import 'package:furniture_shop_app/presentation/bindings/my_cart_binding.dart';
import 'package:furniture_shop_app/presentation/bindings/orders/add_order_binding.dart';
import 'package:furniture_shop_app/presentation/pages/intro/splash_page.dart';
import 'package:furniture_shop_app/presentation/pages/my_cart_page.dart';
import 'package:furniture_shop_app/presentation/pages/orders/add_order_page.dart';
import 'package:furniture_shop_app/presentation/pages/orders/congrats_page.dart';
import 'package:furniture_shop_app/presentation/pages/payment_method_page.dart';
import 'package:furniture_shop_app/presentation/pages/shipping_address_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../presentation/bindings/intro/onboarding_binding.dart';
import '../../presentation/bindings/main/favorites_binding.dart';
import '../../presentation/bindings/main/home_binding.dart';
import '../../presentation/bindings/product_detail_binding.dart';
import '../../presentation/pages/main/bottom_navigation.dart';
import '../../presentation/pages/auth/login_page.dart';
import '../../presentation/pages/auth/signup_page.dart';
import '../../presentation/pages/intro/boarding_screen.dart';
import '../../presentation/pages/main/favorites_page.dart';
import '../../presentation/pages/my_orders_page.dart';
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
  static const String myCart = '/my_cart';
  static const String checkOut = '/checkOut';
  static const String settings = '/settings';
  static const String notifications = '/notifications';
  static const String review = '/review';
  static const String profile = '/profile';
  static const String shippingAddress = '/shippingAddress';
  static const String paymentMethod = '/paymentMethod';
  static const String myReviews = '/myReviews';
  static const String myOrders = '/myOrders';
  static const String addShippingAddress = '/addShippingAddress';
  static const String addPayment = '/addPayment';
  static const String addOrder = '/addOrder';
  static const String congrats = '/congrats';

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
        FavoritesBinding(),
        ProfileBinding(),
      ],
    ),
    GetPage(name: myOrders, page: () => MyOrdersPage()),
    GetPage(name: myReviews, page: () => const MyReviewsScreen()),
    GetPage(name: settings, page: () => const SettingsScreen()),
    GetPage(
      name: profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(name: notifications, page: () => const NotificationsPage()),
    GetPage(name: favorites, page: () => const FavoritesPage()),
    GetPage(
      name: productDetail,
      page: () => const ProductDetailPage(),
      binding: ProductDetailBinding(),
    ),
    GetPage(
      name: onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: signUp,
      page: () => const SignUpPage(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: myCart,
      page: () => const MyCartPage(),
      binding: MyCartBinding(),
    ),
    GetPage(
      name: addOrder,
      page: () => const AddOrderPage(),
      binding: AddOrderBinding(),
    ),
    GetPage(
      name: congrats,
      page: () => const CongratsPage(),
    ),
    GetPage(
      name: paymentMethod,
      page: () => const PaymentMethodPage(),
    ),
    GetPage(
      name: shippingAddress,
      page: () => const ShippingAddressPage(),
    ),
  ];
}
