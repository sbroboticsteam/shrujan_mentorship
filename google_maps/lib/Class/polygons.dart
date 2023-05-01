import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Polygon drawPoly(
    {required String id,
    required List<LatLng> allpoints,
    required Color color}) {
  return Polygon(
      polygonId: PolygonId(id),
      onTap: () {},
      points: allpoints,
      fillColor: color,
      strokeWidth: 3,
      strokeColor: Colors.blueGrey);
}
