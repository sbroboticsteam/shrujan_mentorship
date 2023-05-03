import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import './homeScreen.dart';
import '../Widgets/titleWidget.dart';
import '../Dataset/dataset.dart';
import '../Class/location_class.dart';

final isClicked = List<bool>.generate(
  60,
  (index) {
    return false;
  },
);

class pList extends StatefulWidget {
  pList({super.key});

  @override
  State<pList> createState() => _pListState();
}

class _pListState extends State<pList> {
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

  @override
  Widget build(BuildContext context) {
    void onNavigate(ParkingLocation lot) {
      CameraPosition lotDisp =
          CameraPosition(target: lot.LngLat.elementAt(0), zoom: 17);
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const Home(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
      setState(() {
        disp_polygons.clear();
        disp_polygons.add(lot.poly);
        disp_camera.clear();
        disp_camera.add(lotDisp);
      });
    }

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
            'Parking Lots',
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
        body: ListView(
          children: [
            tile(
              isclicked: isClicked.elementAt(0),
              lotName: lot1,
              key: Key(lot1.id),
              onPresed: () {
                onNavigate(lot1);
              },
            ),
            tile(
              isclicked: isClicked.elementAt(1),
              lotName: lot2,
              key: Key(lot2.id),
              onPresed: () {
                onNavigate(lot2);
              },
            ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-3',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-4',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-5',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-6',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-7',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-8',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-9',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-10',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-11',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-12',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-13',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-14',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-15',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-16',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-17',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-18',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-19',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-20',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-21',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-22',
            //   onPresed: () {},
            // ),
            tile(
              isclicked: isClicked.elementAt(23),
              lotName: lot23,
              key: Key(lot23.id),
              onPresed: () {
                onNavigate(lot23);
              },
            ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-24',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-25',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-26',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-27',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-28',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-29',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-30',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-31',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-32',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-33',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-34',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-35',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-36',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-37',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-38',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-39',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-40',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-41',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-42',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-43',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-44',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-45',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-46',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-47',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-48',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-49',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-50',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-51',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-52',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-53',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-54',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-A',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-B',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-C',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-D',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-E',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-F',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-G',
            //   onPresed: () {},
            // ),
            // tile(
            //   landMark: '',
            //   title: 'Lot-H',
            //   onPresed: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
