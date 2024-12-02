import 'package:get/get.dart';
import '../../../core/enums/order_state.dart';

class CongratsController extends GetxController {
  static CongratsController get to => Get.find();

  final Rx<OrderState> _orderState = OrderState.delivered.obs;

  OrderState get orderState => _orderState.value;

}
