import 'package:flutter/material.dart';

import 'package:ptappmobile/view/components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black87,
      //   foregroundColor: Colors.black87,
      //   shadowColor: Colors.black87,
      //   automaticallyImplyLeading: false,
      // ),
      body: Body(),
    );
  }
}




