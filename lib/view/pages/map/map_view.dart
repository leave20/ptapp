import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptappmobile/controller/map_controller.dart';

import 'animated_map.dart';




class MapPage extends GetView<MapController> {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: AnimatedMap(),
    );
  }
}


