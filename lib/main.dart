import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sale/data/controller/popular_product_controller.dart';
import 'package:flutter_app_sale/pages/food_detail/recommended_food_detail.dart';
import 'package:flutter_app_sale/pages/home/home_food_page.dart';
import 'package:get/get.dart';
import 'helper/dependecies.dart' as dep;
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Nunito",
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: HomeFoodPage(),
    );
  }

}

