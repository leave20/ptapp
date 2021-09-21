import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptappmobile/controller/splashscreen_controller.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (_) {
          return Scaffold(
            backgroundColor: Colors.white10,
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: FractionallySizedBox(
                        widthFactor: .6,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 500.0,
                            ),
                            CircularProgressIndicator(
                              color: Colors.white,
                              backgroundColor: Colors.amber,
                            ),
                            Text(
                              'Welcome',
                              style: TextStyle(color: Colors.white),
                            )
                            // Image(
                            //   image: AssetImage('assets/vectors/path865.png'),
                            // ),
                            // SizedBox(
                            //   height: 20.0,
                            // ),
                            // Text(
                            //   'Craig Kem Castro Pairazaman',
                            //   style: TextStyle(color: Colors.white),
                            // )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
