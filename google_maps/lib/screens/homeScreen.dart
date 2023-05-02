import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../Dataset/dataset.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import './PlotListScenes.dart';
import './favScreen.dart';
import '../Class/location_class.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static LatLng targ = const LatLng(40.916967, -73.117652);

  final CameraPosition _stonyBrook = CameraPosition(
    target: targ,
    zoom: 17,
  );
  bool clicked = true;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  bool display1 = true;
  Set<Polygon> polygons = HashSet<Polygon>();

  void addPolygon(
      {required ParkingLocation lotName, required Set<Polygon> set}) {
    setState(() {
      polygons.clear();
      polygons.add(lotName.poly);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _sideMenuKey,
      menu: buildMenu(context),
      background: const Color.fromARGB(255, 255, 255, 191),
      closeIcon: const Icon(Icons.close_sharp, color: Colors.black),
      type: SideMenuType.slide,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 129),
          title: const Text(
            'Campus Maps',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          foregroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              final state = _sideMenuKey.currentState;
              if (state!.isOpened) {
                state.closeSideMenu();
              } else {
                state.openSideMenu();
              }
            },
          ),
        ),
        body: GoogleMap(
          initialCameraPosition: _stonyBrook,
          compassEnabled: true,
          mapType: MapType.normal,
          polygons: polygons,
          zoomControlsEnabled: true,
          mapToolbarEnabled: true,
        ),
        floatingActionButton: clicked
            ? FloatingActionButton(
                onPressed: () {
                  setState(() {
                    clicked = !clicked;
                  });
                },
                backgroundColor: Colors.red,
                child: const Icon(Icons.local_parking),
              )
            : FloatingActionButton.extended(
                elevation: 2,
                label: const Text(
                  "I'm Parked",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    clicked = !clicked;
                  });
                },
                enableFeedback: true,
                backgroundColor: Colors.green,
              ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
      ),
    );
  }
}

Widget buildMenu(context) {
  return SingleChildScrollView(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/SBU-vert_2clr_rgb_72ppi.png',
                    height: 150,
                    width: 200,
                  )),
                  const SizedBox(height: 50.0),
                  const Text(
                    "Hello, SeaWolfs",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const Home(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(5.0, 0.0);
                      const end = Offset.zero;
                      final tween = Tween(begin: begin, end: end);
                      final offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              leading: const Icon(Icons.location_on,
                  size: 20.0, color: Colors.black),
              title: const Text(
                "Map",
                style: TextStyle(fontSize: 15),
              ),
              textColor: Colors.black,
              dense: true,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        pList(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(5.0, 0.0);
                      const end = Offset.zero;
                      final tween = Tween(begin: begin, end: end);
                      final offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              leading: const Icon(Icons.local_parking,
                  size: 20.0, color: Colors.black),
              title: const Text(
                "Parking Lots",
                style: TextStyle(fontSize: 15),
              ),
              textColor: Colors.black,
              dense: true,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        favList(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(5.0, 0.0);
                      const end = Offset.zero;
                      final tween = Tween(begin: begin, end: end);
                      final offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              leading:
                  const Icon(Icons.favorite, size: 20.0, color: Colors.black),
              title: const Text(
                "Favorite Lots",
                style: TextStyle(fontSize: 15),
              ),
              textColor: Colors.black,
              dense: true,
            ),
          ],
        ),
      ],
    ),
  );
}
