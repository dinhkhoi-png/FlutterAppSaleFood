import 'package:get/get.dart';
class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight/2.64;
  static double pageViewController = screenHeight/3.84;
  static double pageTextController = screenHeight/7.03;

  //dynamic height padding and margin

  static double height10 = screenHeight/84.4;
  static double height15 =screenHeight/56.27;
  static double height20 = screenHeight/42.2;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/18.7;


  //dynamic width padding and margin
  static double width10 = screenHeight/84.4;
  static double width15 =screenHeight/56.27;
  static double width20 = screenHeight/42.2;
  static double width30 =screenHeight/28.13;
  static double width45 =screenHeight/18.7;



  static double font20 = screenHeight/42.2;
  static double font12 = screenHeight/70.3;

  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;

  static double iconSize24 = screenHeight/35.17;

  //list view
  static double listViewImg = screenWidth/3.25;
  static double listViewCont = screenWidth/3.9;

  //page detail
  static double popularFoodImg = screenHeight/2.41;


}