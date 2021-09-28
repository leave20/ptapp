import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:ptappmobile/model/marker.dart';

const MAPBOX_ACCESS_TOKEN =
    'pk.eyJ1IjoibGVhdmUyMCIsImEiOiJja3UzbDBqaDEwOGR5MnhvNjd3azJncWN0In0.m3acI93K5Ue39hdsCGsL_A';
const MAPBOX_STYLE = 'mapbox/dark-v10';
const MARKER_COLOR = Color(0xFFFDA400);
const MARKER_SIZE_EXPANDED =38.0 ;
const MARKER_SIZE_SHRINK =25.0;

final _myLocation = LatLng(-12.0362176, -77.0296812);

class AnimatedMap extends StatefulWidget {
  const AnimatedMap({Key? key}) : super(key: key);

  @override
  _AnimatedMapState createState() => _AnimatedMapState();
}

class _AnimatedMapState extends State<AnimatedMap> {
  final _pageController = PageController();
  int _selectedIndex = 0;

  List<Marker> _buildMarkers() {
    final _markerList = <Marker>[];
    for (int i = 0; i < mapMarker.length; i++) {
      final mapItem = mapMarker[i];
      _markerList.add(
        Marker(
          height:MARKER_SIZE_EXPANDED,
          width: MARKER_SIZE_EXPANDED,
          point: mapItem.location,
          builder: (_) {
            return GestureDetector(
              onTap: () {
                _selectedIndex=i;
                setState(() {
                  _pageController.animateToPage(i,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.elasticOut);
                  print('Selected: ${mapItem.title}');
                });
              },
              child: _locationMarker(
                selected: _selectedIndex==i,
              ),
            );
          },
        ),
      );
    }
    return _markerList;
  }

  @override
  Widget build(BuildContext context) {
    final _markers = _buildMarkers();
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
                minZoom: 5, maxZoom: 18, zoom: 13, center: _myLocation),
            nonRotatedLayers: [
              TileLayerOptions(
                  urlTemplate:
                      'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
                  additionalOptions: {
                    'accessToken': MAPBOX_ACCESS_TOKEN,
                    'id': MAPBOX_STYLE
                  }),
              MarkerLayerOptions(
                markers: _markers,
              ),
              MarkerLayerOptions(
                markers: [
                  Marker(
                    point: _myLocation,
                    builder: (_) {
                      return _MyLocationMarker();
                    },
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            height: MediaQuery.of(context).size.height * 0.3,
            child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mapMarker.length,
                itemBuilder: (context, index) {
                  final item = mapMarker[index];
                  return _MapIndexDetails(
                    marker: item,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
class _locationMarker extends StatelessWidget{
const _locationMarker({Key? key,this.selected=false}):super(key: key);
final bool selected;
  @override
  Widget build(BuildContext context) {
    final size=selected?MARKER_SIZE_EXPANDED :MARKER_SIZE_SHRINK;
    // TODO: implement build
    return Center(
      child: AnimatedContainer(
        height: size,
        width: size,
        duration: Duration(milliseconds: 400),
        child:Image.asset('assets/vectors/marker.png'),
      ),
    );
  }

}


class _MapIndexDetails extends StatelessWidget {
  const _MapIndexDetails({Key? key, required this.marker}) : super(key: key);

  final MapMarker marker;

  @override
  Widget build(BuildContext context) {
    final _styleTitle = TextStyle(
        color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold);
    final _styleAddress =
        TextStyle(color: Colors.black87.withOpacity(0.8), fontSize: 14);
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(marker.image),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          marker.title,
                          style: _styleTitle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          marker.address,
                          style: _styleAddress,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () =>null,
              color: MARKER_COLOR,
              child: Text(
                'Call',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyLocationMarker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: MARKER_COLOR,
        shape: BoxShape.circle,
      ),
    );
  }
}
