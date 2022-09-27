
import 'package:flutter/material.dart';
import 'package:flutter_app_sale/pages/home/home_food_page.dart';
import 'package:flutter_app_sale/utils/colors.dart';
import 'package:flutter_app_sale/widgets/app_column.dart';
import 'package:flutter_app_sale/widgets/app_icon.dart';
import 'package:flutter_app_sale/widgets/big_text.dart';
import 'package:flutter_app_sale/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../utils/dimensions.dart';


class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    image: AssetImage(
                      "assets/image/food0.png"
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
                          Get.to(()=>HomeFoodPage());
                        },
                        child: AppIcon(icon: Icons.arrow_back_ios)),
                  AppIcon(icon: Icons.shopping_cart_outlined)
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
                    AppColumn(text: "Lẩu Thái Hải Sản",),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Giới thiệu"),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(
                      child: SingleChildScrollView(
                          child: ExpandableTextWidget(text: "Lẩu Thái hải sản chua cay là món ngon cuối tuần, "
                          "cho bữa tiệc gia đình. Lẩu Thái hải sản chua cay ngon "
                              "đúng chuẩn sẽ có nước dùng chua ngọt, cay nồng từ sả ớt, "
                              "kích thích vị giác, giúp ăn ngon miệng hơn. "
                              "Đặc biệt, những ngày trời lạnh ngồi quây quần bên nồi"
                              "lẩu Thái chua cay tỏa hương thơm nồng thì ấm lòng hết biết. \n "
                              "Đặc trưng của Lẩu Thái không thể thiếu vị cay của ớt, vị thơm của gừng, sả cùng lá chanh, kết hợp với vị ngọt của nước hầm xương, những nguyên liệu tươi sống của hải sản như cua, mực, tôm, sò, cá,… và đặc biệt không thể thiếu những món rau tươi ăn kèm như nấm, rau muống, rau cải,…Nước lẩu Thái là sự kết hợp của nhiều hương vị nồng nàn và đậm đà: vị chua đặc trưng của lẩu, vị ngọt từ nước hầm và vị cay tinh tế …\n"
                              "Nếu bạn muốn tự mình thực hiện món này ở nhà thì hãy luôn nhớ "
                              "Cooky có sẵn pack ướp sẵn, chỉ cần order là có ngay cho bạn "
                              "trổ tài làm ngay nhé.",)),
                    )],
                ),
          )
          ),
          //Exandable text
        ],
      ),
      bottomNavigationBar: Container(
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
                  Icon(Icons.remove , color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add , color: AppColors.signColor),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,right: Dimensions.width20, left: Dimensions.width20),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white,),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
