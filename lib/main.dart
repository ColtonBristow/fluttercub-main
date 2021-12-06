import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: override_on_non_overriding_member
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Object model;
  @override
  void initState() {
    model = Object(fileName: 'assets/HulkBusterSmall.obj');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('flutter cube'.toUpperCase()),
        ),
        body: Center(
          child: Cube(
            onSceneCreated: (Scene scene) {
              scene.world.add(model);
              scene.camera.zoom = 18;
            },
          ),
        ),
      ),
    );
  }
}
