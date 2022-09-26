import 'package:flutter_app_sale/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;

  PopularProductRepo({ required this.apiClient});

  Future<Response>  getPopularProductList() async{
    return await apiClient.getData("/api/v1/products/popular");
  }
}