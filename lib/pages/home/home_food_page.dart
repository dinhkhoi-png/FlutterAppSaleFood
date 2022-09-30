import 'package:flutter/material.dart';
import 'package:flutter_app_sale/data/controller/popular_product_controller.dart';
import 'package:flutter_app_sale/data/controller/recommended_product_controller.dart';

import 'package:flutter_app_sale/utils/dimensions.dart';
import 'package:flutter_app_sale/widgets/big_text.dart';
import 'package:flutter_app_sale/widgets/small_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import 'home_food_body.dart';

class HomeFoodPage extends StatefulWidget {
  const HomeFoodPage({Key? key}) : super(key: key);

  @override
  State<HomeFoodPage> createState() => _HomeFoodPageState();
}

class _HomeFoodPageState extends State<HomeFoodPage> {
  @override
  Widget build(BuildContext context) {
    Future<void> _loadResource() async{
      await Get.find<PopularProductController>().getPopularProductList();
      await Get.find<RecommendedProductController>().getRecommendedProductList();
    }
    print("Curent height"+MediaQuery.of(context).size.height.toString());
    return RefreshIndicator(child: Column(
      children: [
        Container(
          //show header
          child: Container(
            margin: EdgeInsets.only(top: Dimensions.height20 , bottom: Dimensions.height20),
            padding: EdgeInsets.only(left: Dimensions.width20 , right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "Chang Kang Kung" , color: AppColors.mainColor,),
                    Row(
                      children: [
                        SmallText(text: "Quận 1" , color: Colors.black54,),
                        Icon(Icons.arrow_drop_down_sharp),

                      ],
                    ),

                  ],
                ),
                Container(
                  width: Dimensions.width45,
                  height: Dimensions.height45,
                  child: Icon(Icons.search , color: Colors.white , size: Dimensions.iconSize24,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        //show body
        Expanded(
          child: SingleChildScrollView(
              child: HomeFoodBody()),
        ),

      ],
    ), onRefresh: _loadResource);
  }
}
