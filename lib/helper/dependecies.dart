import 'package:flutter_app_sale/data/api/api_client.dart';
import 'package:flutter_app_sale/data/controller/popular_product_controller.dart';
import 'package:flutter_app_sale/data/repository/popular_product_repo.dart';
import 'package:flutter_app_sale/data/repository/recommended_product_repo.dart';
import 'package:flutter_app_sale/utils/app_constants.dart';
import 'package:get/get.dart';

import '../data/controller/recommended_product_controller.dart';
Future<void> init()async {
  //api client
  Get.lazyPut(()=> ApiClient(appBaseUrl:AppConstants.BASE_URL));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo:Get.find()));
}