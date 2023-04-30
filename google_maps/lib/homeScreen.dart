import 'package:flutter/material.dart';
import 'package:google_maps/Class/location_class.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'Dataset/DataSet_Angel.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static LatLng targ = const LatLng(40.917711, -73.122876);

  @override
  void initState() {
    targ = LatLng(40.917711, -73.122876);
    super.initState();
  }

  CameraPosition _stonyBrook = CameraPosition(
    target: targ,
    zoom: 14.5,
  );
  void Change(bool variable) {
    setState(() {
      variable = !variable;
    });
  }

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  bool display1 = true;
  @override
  Widget build(BuildContext context) {
    Polygon polygonDraw(
        {required BuildContext context,
        required ParkingLocation name,
        required bool vis,
        required Key key}) {
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
          // if (!vis) {
          //   showModalBottomSheet(
          //       context: context,
          //       builder: (BuildContext context) {
          //         return Column(
          //           children: [
          //             BackButton(
          //               onPressed: () {
          //                 Navigator.pop(context);
          //                 Change(vis);
          //               },
          //             ),
          //             Text(
          //               name.LotName,
          //               style: const TextStyle(fontSize: 30),
          //             ),
          //           ],
          //         );
          //       });
          // }
          Change(vis);
        },
      );
    }

    Set<Polygon> polygons = {
      polygonDraw(
          name: lot1, context: context, vis: display1, key: Key(lot1.id)),
      Polygon(
          polygonId: PolygonId(lot2.id),
          points: lot2.LngLat,
          fillColor: Colors.blueAccent,
          visible: display1,
          strokeWidth: 1),
    };

    return SideMenu(
      key: _sideMenuKey,
      menu: buildMenu(), background: Color.fromARGB(255, 255, 255, 191),
      closeIcon: const Icon(Icons.close_sharp, color: Colors.black),
      type: SideMenuType.slide, // check above images
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
          mapType: MapType.satellite,
          polygons: polygons,
        ),
      ),
    );
  }
}

Widget buildMenu() {
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
        Padding(
          padding: const EdgeInsets.only(top: 180.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 122, 82, 255)),
            ),
            onPressed: () {},
            child: const Text('Show all Parking lots'),
          ),
        )
      ],
    ),
  );
}
