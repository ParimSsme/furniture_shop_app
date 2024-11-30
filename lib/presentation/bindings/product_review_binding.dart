import 'package:get/get.dart';
import '../controllers/product_review_controller.dart';

class ProductReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductReviewController>(() => ProductReviewController());
  }
}