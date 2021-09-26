import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptappmobile/controller/dashboard_controller.dart';
import 'package:ptappmobile/view/pages/account/account_view.dart';
import 'package:ptappmobile/view/pages/favorite/favorite_view.dart';
import 'package:ptappmobile/view/pages/home/home_view.dart';
import 'package:ptappmobile/view/pages/map/map_view.dart';
import 'package:ptappmobile/view/pages/social/social_view.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return GetBuilder<DashboardController>(
     builder: (controller){
       return Scaffold(
           body: SafeArea(
             child: IndexedStack(
               index: controller.tabIndex.value,
               children: [
                 AccountPage(),
                 FavoritePage(),
                 HomePage(),
                 MapPage(),
                 SocialPage(),
               ],
             ),
           ),
           bottomNavigationBar: Obx(
                 () => BottomNavigationBar(
               unselectedItemColor: Colors.grey,
               selectedItemColor: Colors.black87,
               onTap: controller.changeTabIndex,
               currentIndex: controller.tabIndex.value,
               showSelectedLabels: true,
               showUnselectedLabels: true,
               type: BottomNavigationBarType.fixed,
               backgroundColor: Colors.white,
               elevation: 0,
               items: [
                 BottomNavigationBarItem(
                   icon: Icon(Icons.person),
                   label: "Account",
                 ),
                 BottomNavigationBarItem(
                   icon: Icon(Icons.bookmark),
                   label: "Favorite",
                 ),
                 BottomNavigationBarItem(
                   icon: Icon(Icons.home),
                   label: 'Home',
                 ),
                 BottomNavigationBarItem(
                   icon: Icon(Icons.location_on),
                   label: 'Location',
                 ),
                 BottomNavigationBarItem(
                   icon: Icon(Icons.chat_bubble),
                   label: 'Social',
                 ),
               ],
             ),
           ));
     },
   );
  }

// _bottomNavigationBarItem({IconData icon, String label}) {
//   return BottomNavigationBarItem(
//     icon: Icon(icon),
//     label: label,
//   );
// }
}
