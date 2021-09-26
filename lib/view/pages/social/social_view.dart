import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptappmobile/controller/social_controller.dart';

class SocialPage extends GetView<SocialController> {
  const SocialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('social view'),
        ),
      ),
    );
  }
}
