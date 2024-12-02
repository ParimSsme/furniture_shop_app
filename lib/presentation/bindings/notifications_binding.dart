import 'package:furniture_shop_app/presentation/controllers/main/notifications_controller.dart';
import 'package:get/get.dart';

class NotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsController>(() => NotificationsController());
  }
}