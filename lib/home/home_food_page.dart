import 'package:flutter/material.dart';
import 'package:flutter_app_sale/home/home_food_body.dart';
import 'package:flutter_app_sale/utils/dimensions.dart';
import 'package:flutter_app_sale/widgets/big_text.dart';
import 'package:flutter_app_sale/widgets/small_text.dart';

import '../utils/colors.dart';

class HomeFoodPage extends StatefulWidget {
  const HomeFoodPage({Key? key}) : super(key: key);

  @override
  State<HomeFoodPage> createState() => _HomeFoodPageState();
}

class _HomeFoodPageState extends State<HomeFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("Curent height"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            //show header
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45 , bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20 , right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Hồ Chí Minh" , color: AppColors.mainColor,),
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
          HomeFoodBody(),
        ],
      ),
    );
  }
}
