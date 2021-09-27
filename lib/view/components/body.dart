import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header_with_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
        ],
      ),
    );
  }
}

