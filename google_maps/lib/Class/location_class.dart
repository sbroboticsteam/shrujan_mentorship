import 'dart:core';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ParkingLocation {
  final String id;
  final String LotName;
  final List<LatLng> LngLat;
  final Polygon poly;
  String address = '';

  ParkingLocation({
    required this.id,
    required this.LotName,
    required this.LngLat,
    required this.poly,
    required this.address,
  });
}
