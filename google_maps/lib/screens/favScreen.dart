import 'package:flutter/material.dart';
import 'package:google_maps/Widgets/titleWidget.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import './homeScreen.dart';
import '../Widgets/titleWidget_fav.dart';

class favList extends StatelessWidget {
  favList({super.key});

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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return tileFav(
            onPresed: () {},
            lotName: saveLots.elementAt(index),
            key: Key(saveLots.elementAt(index).id),
          );
        },
        addAutomaticKeepAlives: true,
        addRepaintBoundaries: true,
        itemCount: saveLots.length);
  }
}
