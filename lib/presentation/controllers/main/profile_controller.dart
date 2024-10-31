import 'package:furniture_shop_app/data/repositories/local_data_repository.dart';
import 'package:furniture_shop_app/domain/entities/user_entity.dart';
import 'package:get/get.dart';
import '../../../core/services/navigation_service.dart';
import '../../../data/datasources/local_data_source.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();

  final LocalDataRepository _localDataRepository;

  ProfileController()
      : _localDataRepository = LocalDataRepository(LocalDataSource());

  /// Static data
  Rx<UserEntity> user = const UserEntity().obs;

  @override
  void onInit() {
    super.onInit();
    loadStaticData();
  }

  void loadStaticData() {
    user.value = _localDataRepository.getUser() ?? const UserEntity();
  }

  void onMyOrdersClick() => NavigationService.to.navigateToMyOrders();

  void onShippingAddressClick() => NavigationService.to.navigateToShippingAddress();

  void onPaymentMethodClick() => NavigationService.to.navigateToPaymentMethod();

  void onMyReviewsClick() => NavigationService.to.navigateToMyReviews();

  void onSettingsClick() => NavigationService.to.navigateToSettings();

}
