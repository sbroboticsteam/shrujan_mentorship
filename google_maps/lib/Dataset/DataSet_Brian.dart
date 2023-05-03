import 'package:flutter/material.dart';
import '../Class/location_class.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../Class/polygons.dart';

// Lot 23

ParkingLocation lot23 = ParkingLocation(
  address: '',
  poly: poly_23,
  LotName: 'Lot23',
  LngLat: location_23,
  id: '23',
);

Polygon poly_23 =
    drawPoly(allpoints: location_23, color: Colors.blue, id: '23');

// goes counterclock wise starting with the very north point

List<LatLng> location_23 = [
  const LatLng(40.910049, -73.124512),
  const LatLng(40.909723, -73.125113),
  const LatLng(40.909433, -73.125365),
  const LatLng(40.908754, -73.125521),
  const LatLng(40.908801, -73.124955),
  const LatLng(40.909002, -73.125027),
  const LatLng(40.909030, -73.124938),
  const LatLng(40.908837, -73.124815),
  const LatLng(40.908837, -73.124815),
];

// Lot C

ParkingLocation lotC = ParkingLocation(
  address: '', poly: poly_C,
  LotName: 'LotC',
  LngLat: location_C,
  id: '58', // what ID??
);

// starts at the left topmost point and follows right

List<LatLng> location_C = [
  const LatLng(40.907986, -73.111081),
  const LatLng(40.907952, -73.108765),
  const LatLng(40.907594, -73.108317),
  const LatLng(40.907164, -73.108340),
  const LatLng(40.906846, -73.108795),
  const LatLng(40.906846, -73.110444),
  const LatLng(40.906935, -73.110440),
  const LatLng(40.906895, -73.108822),
  const LatLng(40.907230, -73.108407),
  const LatLng(40.907563, -73.108391),
  const LatLng(40.907885, -73.108801),
  const LatLng(40.907915, -73.111062),
];

Polygon poly_C = drawPoly(allpoints: location_C, color: Colors.blue, id: '58');
