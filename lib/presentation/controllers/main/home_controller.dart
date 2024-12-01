import 'package:furniture_shop_app/domain/entities/product_category_entity.dart';
import 'package:furniture_shop_app/domain/entities/product_entity.dart';
import 'package:get/get.dart';
import '../../../core/utils/app_navigator.dart';
import '../../../data/datasources/static_data_source.dart';
import '../../../data/repositories/static_data_repository.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final StaticDataRepository _staticDataRepository;

  HomeController()
      : _staticDataRepository = StaticDataRepository(const StaticDataSource());

  /// Static data
  late List<ProductEntity> _products = <ProductEntity>[];
  late RxList<ProductEntity> products = <ProductEntity>[].obs;
  var categories = <ProductCategoryEntity>[].obs;
  final _selectedCategoryIndex = 0.obs;

  get selectedCategoryIndex => _selectedCategoryIndex.value;

  @override
  void onInit() {
    super.onInit();
    loadStaticData();
  }

  void loadStaticData() {
    _products = List.unmodifiable(_staticDataRepository.getProducts());
    products(_products.where((element) => element.isPopular == true).toList());
    categories.value = _staticDataRepository.getCategories();
  }

  void filterProducts(int index) {
    _selectedCategoryIndex.value = index;
    products.value = index == 0
        ? _products.where((element) => element.isPopular == true).toList()
        : _products.where((element) => element.categoryId == index).toList();
    products.refresh();
  }

  void onItemClick({
    required int id,
  }) =>
      AppNavigator.to.navigateToProductDetail(id: id);

  void onMyCartClick() => AppNavigator.to.navigateToMyCart();
}
