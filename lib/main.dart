import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptappmobile/view/login/intro_view.dart';
import 'package:ptappmobile/view/login/login_view.dart';
import 'package:ptappmobile/view/onboarding_page.dart';
import 'package:ptappmobile/view/pages/dashboard/dashboard_binding.dart';
import 'package:ptappmobile/view/pages/dashboard/navigation_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'view/login/splash_view.dart';

var initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          dividerColor: Colors.black87,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute:
          initScreen == 0 || initScreen == null ? '/onboard' : '/intro',
      getPages: [
        GetPage(
          name: '/intro',
          page: () => IntroPage(),
        ),
        GetPage(
          name: '/onboard',
          page: () => OnboardingPage(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => DashboardPage(),
          binding: DashboardBinding(),
        ),
        // 'login': (context) => ,
        // 'onboard': (context) => OnboardingPage(),
      ],
    );
  }
}
