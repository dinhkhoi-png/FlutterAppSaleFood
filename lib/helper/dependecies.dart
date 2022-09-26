import 'package:flutter_app_sale/data/api/api_client.dart';
import 'package:flutter_app_sale/data/controller/popular_product_controller.dart';
import 'package:flutter_app_sale/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
Future<void> init()async {
  //api client
  Get.lazyPut(()=> ApiClient(appBaseUrl: "https://www.dbestech.com"));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}