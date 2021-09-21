import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ptappmobile/view/login/intro_view.dart';
import 'package:ptappmobile/view/login/login_view.dart';
import 'package:ptappmobile/view/login/splash_view.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 5), () {
      Get.off(InitPage());
      Get.to(() => IntroPage(), transition: Transition.fade);

    });
  }

}
