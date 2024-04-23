
import 'package:get_it/get_it.dart';
import 'common/prefs_operator.dart';

GetIt locator = GetIt.instance;

setup() async {

  locator.registerSingleton<PrefsOperator>(PrefsOperator());

}