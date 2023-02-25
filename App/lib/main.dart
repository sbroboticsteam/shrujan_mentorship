import 'package:flutter/material.dart';
import 'package:camera_camera/camera_camera.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final photos = [];
  void openCamera() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CameraCamera(
                  onFile: (file) {
                    photos.add(file);
                    Navigator.pop(context);
                    setState(() {});
                  },
                )));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                  child: TextButton(
                      onPressed: () {
                        openCamera();
                      },
                      child: Text('Open Camera'))),
              Image.network(
                  'https://images.unsplash.com/photo-1605600659908-0ef719419d41?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhc2glMjBjYW58ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'),
              Text('Long'),
              Text('lat'),
              Text('Input Landmark:'),
              TextField(),
              Center(
                  child:
                      TextButton(onPressed: () {}, child: Text('Submit Photo')))
            ]),
          ),
        ));
  }
}
