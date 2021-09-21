import 'package:get/get.dart';
import 'package:ptappmobile/controller/account_controller.dart';
import 'package:ptappmobile/controller/dashboard_controller.dart';

class DashboardBinding extends Bindings{


  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    // Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
    // Get.put(()=>DashboardController());
  }
}