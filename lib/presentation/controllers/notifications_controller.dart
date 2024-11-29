import 'package:furniture_shop_app/domain/entities/notification_entity.dart';
import 'package:get/get.dart';
import '../../data/datasources/static_data_source.dart';
import '../../data/repositories/static_data_repository.dart';

class NotificationsController extends GetxController {
  static NotificationsController get to => Get.find();


  final StaticDataRepository _staticDataRepository;

  NotificationsController()
      : _staticDataRepository = StaticDataRepository(const StaticDataSource());

  /// Static data
  late List<NotificationEntity> _notifications = <NotificationEntity>[];
  late RxList<NotificationEntity> notifications = <NotificationEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadStaticData();
  }

  void loadStaticData() {
    _notifications = List.unmodifiable(_staticDataRepository.getNotifications());
    notifications(_notifications);
  }

}