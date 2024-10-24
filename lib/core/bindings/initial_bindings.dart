import 'package:get/get.dart';
import '../../common/prefs_operator.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {

    Get.put<PrefsOperator>(PrefsOperator());

  }
}