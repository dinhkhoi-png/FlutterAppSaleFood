import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sale/home/home_food_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.white, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const HomeFoodPage(),
    );
  }
}
