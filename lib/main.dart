import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_x_example/pages/bookPage/bookPage.dart';
import 'package:get_x_example/pages/homePage/homePage.dart';
import 'package:get_x_example/pages/mapPage/mapPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'homePage',
      routes: {
        'homePage': (context) => HomePage(),
        'bookPage': (context) => BookPage(),
        'mapPage': (context) => MapPage(),
      },
    );
  }
}
