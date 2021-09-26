import 'package:get/get.dart';
import 'package:ptappmobile/controller/account_controller.dart';
import 'package:ptappmobile/controller/dashboard_controller.dart';
import 'package:ptappmobile/controller/favorite_controller.dart';
import 'package:ptappmobile/controller/home_controller.dart';
import 'package:ptappmobile/controller/map_controller.dart';
import 'package:ptappmobile/controller/social_controller.dart';

class DashboardBinding extends Bindings{


  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<FavoriteController>(()=>FavoriteController());
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<MapController>(() => MapController());
    Get.lazyPut<SocialController>(() => SocialController());
  }
}