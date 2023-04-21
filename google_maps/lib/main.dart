import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _stonyBrook = CameraPosition(
    target: LatLng(40.917711, -73.122876),
    zoom: 10,
  );

  List<LatLng> location = [
    const LatLng(40.911181, -73.119781),
    const LatLng(40.911109, -73.119182),
    const LatLng(40.910345, -73.119287),
    const LatLng(40.910385, -73.119478),
    const LatLng(40.910650, -73.119439),
    const LatLng(40.910704, -73.119893),
  ];

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR" + error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  Set<Circle> circles = Set.from([
    Circle(
      circleId: CircleId('1'),
      center: LatLng(37.123, 90.11),
      radius: 4000,
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // floatingActionButton: FloatingActionButton(onPressed: () async {
        //   getUserCurrentLocation().then((value) async {
        //     print('object');
        //     print(value.latitude.toString() + " " + value.longitude.toString());
        //   });
        // }),
        body: GoogleMap(
          initialCameraPosition: _stonyBrook,
          compassEnabled: true,
          mapType: MapType.satellite,
          // circles: {
          //   Circle(
          //       circleId: CircleId('1'),
          //       center: LatLng(40.917711, -73.122876),
          //       radius: 230)
          // },
          polygons: {
            Polygon(
                polygonId: PolygonId('1'),
                points: location,
                fillColor: Colors.transparent,
                strokeWidth: 2),
          },
        ),
      ),
    );
  }
}
