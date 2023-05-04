import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_drag_drop/Screen/Button/View/ButtonScreen.dart';
import 'package:game_drag_drop/Screen/Easy/View/EasyScreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(
    GetMaterialApp(

      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => ButtonScreen(),
        'easy':(context) => EasyScreen(),
      },
    ),
  );
}
