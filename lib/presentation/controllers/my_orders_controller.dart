import 'package:furniture_shop_app/core/enums/order_state.dart';
import 'package:furniture_shop_app/domain/entities/order_entity.dart';
import 'package:get/get.dart';
import '../../data/datasources/static_data_source.dart';
import '../../data/repositories/static_data_repository.dart';

class MyOrdersController extends GetxController {
  static MyOrdersController get to => Get.find();


  final StaticDataRepository _staticDataRepository;

  MyOrdersController()
      : _staticDataRepository = StaticDataRepository(const StaticDataSource());

  /// Static data
  late List<OrderEntity> _orders = <OrderEntity>[];
  late RxList<OrderEntity> orders = <OrderEntity>[].obs;
  late List<String> filterTabs = [];

  @override
  void onInit() {
    super.onInit();
    loadStaticData();
  }

  void loadStaticData() {
    for (OrderState state in OrderState.values) {
      filterTabs.add(state.text);
    }
    _orders = List.unmodifiable(_staticDataRepository.getOrders());
    orders(_orders.where((element) => element.state == OrderState.delivered).toList());
  }

  void onTabClicked(index) {
    if (index == 0) {
      orders(_orders.where((element) => element.state == OrderState.delivered).toList());
    } else if (index == 1){
      orders(_orders.where((element) => element.state == OrderState.processing).toList());
    } else {
      orders(_orders.where((element) => element.state == OrderState.cancelled).toList());
    }
    orders.refresh();
  }

}