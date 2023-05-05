import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_drag_drop/Screen/Button/View/ButtonScreen.dart';
import 'package:game_drag_drop/Screen/EasyMode/Easy/View/EasyScreen.dart';
import 'package:game_drag_drop/Screen/EasyMode/Easy1/View/Easy1Screen.dart';
import 'package:game_drag_drop/Screen/MediamMode/Medium/View/MediumScreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(
    GetMaterialApp(
      initialRoute: 'medium1',
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => ButtonScreen(),
        'easy':(context) => EasyScreen(),
        'easy1':(context) => Easy1Screen(),
        'medium1':(context) => MediumScreen(),
      },
    ),
  );
}
