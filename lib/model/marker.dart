import 'package:latlong2/latlong.dart';

class MapMarker {
  const MapMarker({
    required this.title,
    required this.image,
    required this.address,
    required this.location,
  });

  final String image;
  final String title;
  final String address;
  final LatLng location;
}

final _location = [
  LatLng(-12.0080041, -77.0778237),
  LatLng(-12.0430962, -77.0208307),
  LatLng(-12.0480045, -77.0205112),
  LatLng(-12.0654067, -77.0257675),
  LatLng(-12.0238438, -77.0822122),
  LatLng(-12.0211287, -77.0502137),
  LatLng(-12.0622444, -77.0708716),

];

const _path = 'assets/images/';

final mapMarker = [
  MapMarker(
    image: '${_path}screen-0.jpg',
    location: _location[0],
    title: 'title1',
    address: 'address nro1',),
  MapMarker(
    image: '${_path}screen-0.jpg',
    location: _location[1],
    title: 'title2',
    address: 'address nro2',),
  MapMarker(
    image: '${_path}screen-0.jpg',
    location: _location[2],
    title: 'title3',
    address: 'address nro3',),
  MapMarker(
    image: '${_path}screen-0.jpg',
    location: _location[3],
    title: 'title4',
    address: 'address nro4',),
  MapMarker(
    image: '${_path}screen-0.jpg',
    location: _location[4],
    title: 'title5',
    address: 'address nro5',),
  MapMarker(
    image: '${_path}screen-0.jpg',
    location: _location[5],
    title: 'title6',
    address: 'address nro6',),
  MapMarker(
    image: '${_path}screen-0.jpg',
    location: _location[6],
    title: 'title7',
    address: 'address nro7',),
];