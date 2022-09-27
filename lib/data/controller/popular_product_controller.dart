import 'dart:ui';

import 'package:flutter_app_sale/data/repository/popular_product_repo.dart';
import 'package:flutter_app_sale/models/products_model.dart';
import 'package:flutter_app_sale/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList= [];
  List<dynamic> get populatProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0 ;
  int get quantity => _quantity;

  Future<void> getPopularProductList()async{
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products);

      _isLoaded = true;
      update();
    }else{

    }
  }

  void setQuantity(bool isIncrement){
    if(isIncrement){

      _quantity = checkQuantity(_quantity + 1) ;
    }else{
      _quantity = checkQuantity(_quantity - 1) ;
    }
    update();
  }
  int checkQuantity(int quantity){
    if(quantity < 0) {
      Get.snackbar("Product Count", "You cannot reduce more !",
      backgroundColor: AppColors.mainColor,

      );
      return 0 ;
    }
    else if(quantity >30){
      Get.snackbar("Product Count", "You cannot reduce more !",
      backgroundColor: AppColors.mainColor,
      );
          return 10 ;
    }else{
      return quantity;
    }

  }

  void initProduct(){
    _quantity = 0 ;

  }
}