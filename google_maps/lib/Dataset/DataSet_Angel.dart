import 'package:flutter/material.dart';

import '../Class/location_class.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../Class/polygons.dart';

// For Lot-1------------------------------------------------------------------
ParkingLocation lot1 = ParkingLocation(
  LotName: 'Lot1',
  LngLat: location_1,
  id: '1',
  poly: poly_1,
);
List<LatLng> location_1 = [
  const LatLng(40.916967, -73.117652),
  const LatLng(40.915840, -73.117556),
  const LatLng(40.915901, -73.116188),
  const LatLng(40.917028, -73.116257),
];
Polygon poly_1 = drawPoly(allpoints: location_1, color: Colors.blue, id: '1');

// For Lot-2 ------------------------------------------------------------------
ParkingLocation lot2 =
    ParkingLocation(LotName: 'Lot2', LngLat: location_2, id: '2', poly: poly_2);
List<LatLng> location_2 = [
  const LatLng(40.910446, -73.123343),
  const LatLng(40.910393, -73.122901),
  const LatLng(40.910444, -73.122871),
  const LatLng(40.910351, -73.122150),
  const LatLng(40.910404, -73.122120),
  const LatLng(40.910347, -73.121710),
  const LatLng(40.910191, -73.121723),
  const LatLng(40.910288, -73.123367),
];

Polygon poly_2 = drawPoly(allpoints: location_2, color: Colors.red, id: '2');
