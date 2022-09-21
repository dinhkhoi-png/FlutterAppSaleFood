import 'package:flutter/material.dart';
import 'package:flutter_app_sale/home/home_food_body.dart';
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
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45 , bottom: 15),
              padding: EdgeInsets.only(left: 20 , right: 20),
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
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search , color: Colors.white,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          HomeFoodBody(),
        ],
      ),
    );
  }
}
