import 'package:flutter_app_sale/pages/food_detail/popular_food_detail.dart';
import 'package:flutter_app_sale/pages/food_detail/recommended_food_detail.dart';
import 'package:flutter_app_sale/pages/home/home_food_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RouteHelper {
  static const String initial="/";
  static const String popularFood="/popular-food";
  static const String recommendedFood="/recommended-food";

  static String getInitial()=>'$initial';
  static String getPopularFood(int pageId)=>'$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId)=>'$recommendedFood?pageId=$pageId';

  static List<GetPage> routes =[
    GetPage(name: initial, page: ()=> HomeFoodPage()),
    GetPage(name: popularFood, page: (){
      var pageId = Get.parameters['pageId'];
      return  PopularFoodDetail(pageId:int.parse(pageId!));

    },
      transition: Transition.fadeIn
    ),
    GetPage(name: recommendedFood, page: (){
      var pageId = Get.parameters['pageId'];
      return  RecommendedFoodDetail(pageId:int.parse(pageId!));
    },
        transition: Transition.fadeIn
    )
  ];
}