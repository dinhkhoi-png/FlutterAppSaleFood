
import 'package:flutter/material.dart';
import 'package:flutter_app_sale/data/controller/cart_controller.dart';
import 'package:flutter_app_sale/data/controller/popular_product_controller.dart';
import 'package:flutter_app_sale/pages/cart/cart_page.dart';
import 'package:flutter_app_sale/pages/home/home_food_page.dart';
import 'package:flutter_app_sale/utils/app_constants.dart';
import 'package:flutter_app_sale/utils/colors.dart';
import 'package:flutter_app_sale/widgets/app_column.dart';
import 'package:flutter_app_sale/widgets/app_icon.dart';
import 'package:flutter_app_sale/widgets/big_text.dart';
import 'package:flutter_app_sale/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../routes/route_helper.dart';
import '../../utils/dimensions.dart';


class PopularFoodDetail extends StatelessWidget {
  final int pageId;
  final String page;

  const PopularFoodDetail({Key? key , required this.pageId , required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product = Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>().initProduct(product,Get.find<CartController>());
    return Scaffold(
      body: Stack(
        children: [
          //background Image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImg,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      AppConstants.BASE_URL+AppConstants.UPLOAD_URL+product.img!
                    )
                  )
                ),
              )
          ),
          //Icon widget
          Positioned(
            top: Dimensions.height20,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
                    GestureDetector(
                        onTap: (){
                          if( page == "cartpage" ){
                            Get.toNamed(RouteHelper.getCartPage());
                          }else{
                            Get.toNamed(RouteHelper.getInitial());
                          }
                        },
                        child: AppIcon(icon: Icons.arrow_back_ios)
                    ),
                  GetBuilder<PopularProductController>(
                      builder: (controller){
                        return GestureDetector(
                          onTap: (){
                            if(controller.totalItems >=1)
                            Get.toNamed(RouteHelper.getCartPage());
                          },
                          child: Stack(

                            children: [
                              AppIcon(icon: Icons.shopping_cart_outlined),
                              controller.totalItems >=1?
                              Positioned(
                                right:0 ,
                                top :0 ,

                                  child: AppIcon(icon: Icons.circle, size: 20,
                                    iconColor: Colors.transparent,
                                    backgroundColor: AppColors.mainColor,),

                              ):
                              Container(),
                              Get.find<PopularProductController>().totalItems >=1?
                              Positioned(
                                right:3 ,
                                top :3 ,
                                child: BigText(text: Get.find<PopularProductController>().totalItems.toString(),
                                size: 12, color: Colors.white,
                                ),
                              ):
                              Container(),
                            ],
                          ),
                        );
                      }
                  ),
                ],
              )
          ),
          //Introduct of food
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImg-30,
              child:Container(
                padding: EdgeInsets.only(top: Dimensions.height10,left: Dimensions.height20 ,right: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: product.name!,),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Giới thiệu"),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(
                      child: SingleChildScrollView(
                          child: ExpandableTextWidget(text: product.description!,)),
                    )],
                ),
          )
          ),
          //Exandable text
        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(
        builder: (popularProduct){
          return Container(
            height: Dimensions.bottomHeight,
            padding: EdgeInsets.only(top: Dimensions.height30,bottom:Dimensions.height30,left: Dimensions.width20 , right: Dimensions.width20 ),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20*2),
                  topRight: Radius.circular(Dimensions.radius20*2),

                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,right: Dimensions.width20, left: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          popularProduct.setQuantity(false);
                        }
                      ,
                          child: Icon(Icons.remove , color: AppColors.signColor,)),
                      SizedBox(width: Dimensions.width10/2,),
                      BigText(text: popularProduct.inCarItems.toString()),
                      SizedBox(width: Dimensions.width10/2,),
                      GestureDetector(
                          onTap: (){
                            popularProduct.setQuantity(true);
                          }
                          ,
                          child: Icon(Icons.add , color: AppColors.signColor)),
                    ],
                  ),
                ),
                GestureDetector(
                onTap: (){
                  popularProduct.addItem(product);
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,right: Dimensions.width20, left: Dimensions.width20),

                        child: BigText(text: "\$ ${product.price!} "+" | Add to cart", color: Colors.white,),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                ),
               ),
              ],
            ),
          );
        },
      ),
    );
  }
}
