import 'package:get/get.dart';
import '../services/shared_preferences_service.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() async {

    /// Services
    // await Get.putAsync(() => SharedPreferencesService().init());

  }
}