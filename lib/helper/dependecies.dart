import 'package:flutter_app_sale/data/api/api_client.dart';
import 'package:flutter_app_sale/data/controller/auth_controller.dart';
import 'package:flutter_app_sale/data/controller/cart_controller.dart';
import 'package:flutter_app_sale/data/controller/popular_product_controller.dart';
import 'package:flutter_app_sale/data/repository/auth_repo.dart';
import 'package:flutter_app_sale/data/repository/cart_repo.dart';
import 'package:flutter_app_sale/data/repository/popular_product_repo.dart';
import 'package:flutter_app_sale/data/repository/recommended_product_repo.dart';
import 'package:flutter_app_sale/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/controller/recommended_product_controller.dart';
Future<void> init()async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(()=> sharedPreferences);

  //api client
  Get.lazyPut(()=> ApiClient(appBaseUrl:AppConstants.BASE_URL));
  Get.lazyPut(()=> AuthRepo(apiClient: Get.find(),sharedPreferences: Get.find()));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo(sharedPreferences:Get.find()));


  //controller
  Get.lazyPut(()=> AuthController(authRepo: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo:Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}