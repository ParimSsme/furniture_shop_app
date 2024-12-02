import 'package:furniture_shop_app/domain/entities/product_review_entity.dart';
import 'package:get/get.dart';
import '../../data/datasources/static_data_source.dart';
import '../../data/repositories/static_data_repository.dart';

class ProductReviewController extends GetxController {
  static ProductReviewController get to => Get.find();


  final StaticDataRepository _staticDataRepository;

  ProductReviewController()
      : _staticDataRepository = StaticDataRepository(const StaticDataSource());

  /// Static data
  late List<ProductReviewEntity> _reviews = <ProductReviewEntity>[];
  late RxList<ProductReviewEntity> reviews = <ProductReviewEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadStaticData();
  }

  void loadStaticData() {
    _reviews = List.unmodifiable(_staticDataRepository.getReviews());
    reviews(_reviews);
  }

  void onBack() => Get.back();

}