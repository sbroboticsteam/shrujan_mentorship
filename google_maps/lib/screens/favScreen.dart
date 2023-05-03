import 'package:flutter/material.dart';
import 'package:google_maps/Widgets/titleWidget.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import './homeScreen.dart';
import '../Widgets/titleWidget_fav.dart';
import '../Class/location_class.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class favList extends StatefulWidget {
  favList({super.key});

  @override
  State<favList> createState() => _favListState();
}

class _favListState extends State<favList> {
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

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
              'Favoite Parking Lot',
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
          body: FavoriteList(
            key: UniqueKey(),
          )),
    );
  }
}

class FavoriteList extends StatefulWidget {
  const FavoriteList({
    super.key,
  });

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  void removeFavorite(ParkingLocation lot) {
    if (saveLots.contains(lot)) {
      setState(() {
        saveLots.remove(lot);
      });
    }
  }

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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return tileFav(
            iconFunction: () => removeFavorite(saveLots.elementAt(index)),
            onPresed: () {
              onNavigate(saveLots.elementAt(index));
            },
            lotName: saveLots.elementAt(index),
            key: Key(saveLots.elementAt(index).id),
          );
        },
        addAutomaticKeepAlives: true,
        addRepaintBoundaries: true,
        itemCount: saveLots.length);
  }
}
