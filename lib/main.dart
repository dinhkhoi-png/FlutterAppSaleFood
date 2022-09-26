import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sale/pages/food_detail/recommended_food_detail.dart';
import 'helper/dependecies.dart' as dep;
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.white, // status bar color
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: [
    SystemUiOverlay.top, //This line is used for showing the bottom bar
  ]);
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
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
        fontFamily: "Nunito",
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: RecommendedFoodDetail(),
    );
  }

}

