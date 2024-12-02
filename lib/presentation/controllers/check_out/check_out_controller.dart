import 'package:furniture_shop_app/core/utils/app_navigator.dart';
import 'package:get/get.dart';

class CheckOutController extends GetxController {
  static CheckOutController get to => Get.find();

  void submitOrder() => AppNavigator.to.navigateToCongrats();

}
