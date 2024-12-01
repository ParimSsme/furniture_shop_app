import 'package:furniture_shop_app/domain/entities/favourite_entity.dart';
import 'package:get/get.dart';
import '../../../core/utils/app_navigator.dart';
import '../../../data/datasources/static_data_source.dart';
import '../../../data/repositories/static_data_repository.dart';

class FavoritesController extends GetxController {
  static FavoritesController get to => Get.find();

  final StaticDataRepository _staticDataRepository;

  FavoritesController()
      : _staticDataRepository = StaticDataRepository(const StaticDataSource());

  /// Static data
  late List<FavouriteEntity> _favourites = <FavouriteEntity>[];
  late RxList<FavouriteEntity> favourites = <FavouriteEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadStaticData();
  }

  void loadStaticData() {
    _favourites = List.unmodifiable(_staticDataRepository.getFavourites());
    favourites(_favourites);
  }

  void onItemClick({
    required int id,
  }) =>
      AppNavigator.to.navigateToProductDetail(id: id);

  void addAllFavoritesToMyCart() => AppNavigator.to.navigateToMyCart();

  void onMyCartClick() => AppNavigator.to.navigateToMyCart();

}
