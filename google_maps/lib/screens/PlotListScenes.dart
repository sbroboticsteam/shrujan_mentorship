import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import './homeScreen.dart';

class pList extends StatelessWidget {
  pList({super.key});
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _sideMenuKey,
      menu: buildMenu(context), background: Color.fromARGB(255, 255, 255, 191),
      closeIcon: const Icon(Icons.close_sharp, color: Colors.black),
      type: SideMenuType.slide, // check above images
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
          body: const Center(
            child: Text("hello"),
          )),
    );
  }
}
