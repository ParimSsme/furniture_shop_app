import 'package:flutter/cupertino.dart';
import 'package:furniture_shop_app/features/feature_auth/presentation/screens/login_screen.dart';
import 'package:furniture_shop_app/features/feature_auth/presentation/screens/signup_screen.dart';
import 'package:furniture_shop_app/features/feature_boarding/presentation/screens/boarding_screen.dart';
import 'package:furniture_shop_app/features/feature_favorites/presentation/screens/favorites_screen.dart';
import 'package:furniture_shop_app/features/feature_home/presentation/screens/home_screen.dart';
import 'package:furniture_shop_app/features/feature_product_detail/presentation/screens/product_detail_screen.dart';
import '../../common/widgets/tabs_main_wrapper.dart';
import '../../features/feature_notifications/presentation/screens/notifications_screen.dart';
import '../../features/feature_profile/presentation/screens/profile_screen.dart';
import '../../features/feature_settings/presentation/screens/settings_screen.dart';
import 'fade_page_route.dart';

enum Routes {
  boarding,
  login,
  signUp,
  home,
  productDetail,
  favorites,
  cart,
  checkOut,
  settings,
  notifications,
  review,
  profile,
  order,
  shippingAddress,
  paymentMethod,
  myReviews,
  addShippingAddress,
  addPayment,
  setting,
}

class _Paths {
  static const String boarding = '/boarding';
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
  static const String addShippingAddress = '/addShippingAddress';
  static const String addPayment = '/addPayment';

  static const Map<Routes, String> _pathMap = {
    Routes.boarding: _Paths.boarding,
    Routes.login: _Paths.login,
    Routes.signUp: _Paths.signUp,
    Routes.home: _Paths.home,
    Routes.productDetail: _Paths.productDetail,
    Routes.favorites: _Paths.favorites,
    Routes.cart: _Paths.cart,
    Routes.checkOut: _Paths.checkOut,
    Routes.settings: _Paths.settings,
    Routes.notifications: _Paths.notifications,
    Routes.review: _Paths.review,
    Routes.profile: _Paths.profile,
    Routes.order: _Paths.order,
    Routes.shippingAddress: _Paths.shippingAddress,
    Routes.paymentMethod: _Paths.paymentMethod,
    Routes.myReviews: _Paths.myReviews,
    Routes.addShippingAddress: _Paths.addShippingAddress,
    Routes.addPayment: _Paths.addPayment,
  };

  static String of(Routes route) => _pathMap[route] ?? home;
}

class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Route onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments as List<dynamic>?;
    final title = arguments?.first ?? '';
    final id = arguments?.last ?? 1;

    switch (settings.name) {
      case _Paths.boarding:
        return FadeRoute(page: const BoardingScreen());

      case _Paths.login:
        return FadeRoute(page: const LoginScreen());

      case _Paths.signUp:
        return FadeRoute(page: const SignUpScreen());

      case _Paths.home:
        return FadeRoute(page: TabsMainWrapper());

      case _Paths.productDetail:
        return FadeRoute(page: const ProductDetailScreen());

      case _Paths.favorites:
        return FadeRoute(page: const FavoritesScreen());

      case _Paths.notifications:
        return FadeRoute(page: const NotificationsScreen());

      case _Paths.profile:
        return FadeRoute(page: const ProfileScreen());

      case _Paths.settings:
        return FadeRoute(page: const SettingsScreen());

      default:
        return FadeRoute(page: const HomeScreen());
    }
  }

  static Future? push<T>(Routes route, [T? arguments]) =>
      state?.pushNamed(_Paths.of(route), arguments: arguments);

  static Future? replaceWith<T>(Routes route, [T? arguments]) =>
      state?.pushReplacementNamed(_Paths.of(route), arguments: arguments);

  static void pop() => state?.pop();

  static NavigatorState? get state => navigatorKey.currentState;
}
