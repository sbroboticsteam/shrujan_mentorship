import 'package:flutter/material.dart';
import '../Class/location_class.dart';

List<ParkingLocation> saveLots = [];

class tile extends StatefulWidget {
  tile(
      {super.key,
      required this.onPresed,
      required this.lotName,
      required this.isclicked});

  Function onPresed;
  ParkingLocation lotName;
  bool isclicked;

  @override
  State<tile> createState() => _tileState();
}

class _tileState extends State<tile> {
  void addFaviorite(ParkingLocation lot) {
    saveLots.add(lot);
  }

  void removeFavorite(ParkingLocation lot) {
    if (saveLots.contains(lot)) {
      saveLots.remove(lot);
    }
  }

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
                    if (!widget.isclicked &
                        !saveLots.contains(widget.lotName)) {
                      addFaviorite(widget.lotName);
                    }
                    widget.isclicked = !widget.isclicked;
                  });
                },
                icon: !widget.isclicked
                    ? const Icon(Icons.favorite)
                    : const Icon(
                        Icons.favorite,
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
