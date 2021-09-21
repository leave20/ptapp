

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ptappmobile/model/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:ptappmobile/view/login/intro_view.dart';


class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;

  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();



  forwardAction(){
    if (isLastPage) {
      Get.to(()=>IntroPage(),transition: Transition.fade);

    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/vectors/_14-car.png', 'Order Your Food',
        'Now you can order food any time  right from your mobile.'),
    OnboardingInfo('assets/vectors/_22-Camera.png', 'Cooking Safe Food',
        'We are maintain safty and We keep clean while making food.'),
    OnboardingInfo('assets/vectors/_23-Destination.png', 'Quick Delivery',
        'Orders your favorite meals will be  immediately deliver')
  ];
}
