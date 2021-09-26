import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptappmobile/controller/map_controller.dart';

class MapPage extends GetView<MapController> {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(child: Text('map view')),
    ));
  }
}
