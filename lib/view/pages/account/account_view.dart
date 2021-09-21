import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptappmobile/controller/account_controller.dart';
import 'package:ptappmobile/model/user.dart';
import 'package:ptappmobile/utils/user_preferences.dart';
import 'package:ptappmobile/view/components/button_account.dart';
import 'package:ptappmobile/view/components/profile.dart';
import 'package:ptappmobile/view/components/stats_view.dart';

class AccountPage extends GetView<AccountController> {
  const AccountPage({Key? key}) : super(key: key);
  final user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.moon_stars_fill),
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.square_arrow_right_fill),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 20.0,
            ),
            ProfileWidget(
              onClicked: () async {},
              imagePath: user.imagePath,
            ),
            SizedBox(
              height: 20.0,
            ),
            buildName(user),
            SizedBox(
              height: 20.0,
            ),
            // Center(child: buildUpgradeButton()),
            // SizedBox(
            //   height: 10.0,
            // ),
            StatsAccount(),
            SizedBox(
              height: 20.0,
            ),
            buildAbout()
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Colors.white),
          ),
          Text(user.email, style: TextStyle(color: Colors.white30))
        ],
      );

  Widget buildUpgradeButton() => ButtonAccount(text: 'Hola', onClicked: () {});

  Widget buildAbout() => Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4, color: Colors.white30),
            )
          ],
        ),
      );
}
