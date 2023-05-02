import 'package:flutter/material.dart';
import '../Class/location_class.dart';
import './titleWidget.dart';

class tileFav extends StatefulWidget {
  tileFav({super.key, required this.onPresed, required this.lotName});

  Function onPresed;
  ParkingLocation lotName;

  @override
  State<tileFav> createState() => _tileFavState();
}

class _tileFavState extends State<tileFav> {
  void removeFavorite(ParkingLocation lot) {
    if (saveLots.contains(lot)) {
      saveLots.remove(lot);
    }
  }

  bool isclicked = true;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset('assets/images/icon.png'),
        title: Text(
          widget.lotName.LotName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        subtitle: Text(widget.lotName.address),
        dense: true,
        onTap: () => widget.onPresed(),
        trailing: Wrap(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    removeFavorite(widget.lotName);
                  });
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
            const CircleAvatar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Icon(Icons.navigation_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
