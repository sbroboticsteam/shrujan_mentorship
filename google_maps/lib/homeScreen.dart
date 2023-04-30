import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:google_maps/Class/location_class.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'Dataset/DataSet_Angel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const CameraPosition _stonyBrook = CameraPosition(
    target: LatLng(40.917711, -73.122876),
    zoom: 10,
  );

  @override
  Widget build(BuildContext context) {
    Polygon polygonDraw(BuildContext context, ParkingLocation name) {
      bool vis = false;
      return Polygon(
        polygonId: PolygonId(name.id),
        points: name.LngLat,
        fillColor: const Color.fromARGB(255, 255, 255, 184),
        geodesic: true,
        strokeWidth: 0,
        visible: vis,
        consumeTapEvents: true,
        onTap: () {
          print("object");
          if (!vis) {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      BackButton(
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() {
                            vis = true;
                          });
                        },
                      ),
                      Text(
                        name.LotName,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ],
                  );
                });
          }
          setState(() {
            vis = !vis;
          });
        },
      );
    }

    Set<Polygon> polygons = {
      polygonDraw(context, lot1),
      Polygon(
          polygonId: PolygonId(lot2.id),
          points: lot2.LngLat,
          fillColor: Colors.transparent,
          visible: true,
          strokeWidth: 1),
    };

    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _stonyBrook,
        compassEnabled: true,
        mapType: MapType.satellite,
        polygons: polygons,
      ),
    );
  }
}
