import 'package:flutter_app_sale/data/api/api_client.dart';
import 'package:flutter_app_sale/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class RecommendedProductRepo extends GetxService{
  final ApiClient apiClient;

  RecommendedProductRepo({ required this.apiClient});

  Future<Response>  getRecommendedProductList() async{

    return await apiClient.getData(AppConstants.RECOMMENED_PRODUCT_URI);
  }
}