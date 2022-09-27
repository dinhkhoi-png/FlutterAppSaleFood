
import 'package:flutter/material.dart';
import 'package:flutter_app_sale/routes/route_helper.dart';
import 'package:flutter_app_sale/widgets/app_icon.dart';
import 'package:flutter_app_sale/widgets/big_text.dart';
import 'package:flutter_app_sale/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                onTap: (){
                  Get.toNamed(RouteHelper.getInitial());
                }
                ,
                    child: AppIcon(icon: Icons.clear,)),
                AppIcon(icon: Icons.shopping_cart_outlined , iconColor:Colors.black26,),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText( text: " Lẩu Thái Hải Sản",),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top:5 , bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/image/food0.png" ,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),

            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "Lẩu Thái hải sản chua cay là món ngon cuối tuần, "
                      "cho bữa tiệc gia đình. Lẩu Thái hải sản chua cay ngon "
                      "đúng chuẩn sẽ có nước dùng chua ngọt, cay nồng từ sả ớt, "
                      "kích thích vị giác, giúp ăn ngon miệng hơn. "
                      "Đặc biệt, những ngày trời lạnh ngồi quây quần bên nồi"
                      "lẩu Thái chua cay tỏa hương thơm nồng thì ấm lòng hết biết. \n "
                      "Đặc trưng của Lẩu Thái không thể thiếu vị cay của ớt, vị thơm của gừng, sả cùng lá chanh, kết hợp với vị ngọt của nước hầm xương, những nguyên liệu tươi sống của hải sản như cua, mực, tôm, sò, cá,… và đặc biệt không thể thiếu những món rau tươi ăn kèm như nấm, rau muống, rau cải,…Nước lẩu Thái là sự kết hợp của nhiều hương vị nồng nàn và đậm đà: vị chua đặc trưng của lẩu, vị ngọt từ nước hầm và vị cay tinh tế …\n"
                      "Nếu bạn muốn tự mình thực hiện món này ở nhà thì hãy luôn nhớ "
                      "Cooky có sẵn pack ướp sẵn, chỉ cần order là có ngay cho bạn "
                      "trổ tài làm ngay nhé. Lẩu Thái hải sản chua cay là món ngon cuối tuần, "
                      "cho bữa tiệc gia đình. Lẩu Thái hải sản chua cay ngon "
                      "đúng chuẩn sẽ có nước dùng chua ngọt, cay nồng từ sả ớt, "
                      "kích thích vị giác, giúp ăn ngon miệng hơn. "
                      "Đặc biệt, những ngày trời lạnh ngồi quây quần bên nồi"
                      "lẩu Thái chua cay tỏa hương thơm nồng thì ấm lòng hết biết. \n "
                      "Đặc trưng của Lẩu Thái không thể thiếu vị cay của ớt, vị thơm của gừng, sả cùng lá chanh, kết hợp với vị ngọt của nước hầm xương, những nguyên liệu tươi sống của hải sản như cua, mực, tôm, sò, cá,… và đặc biệt không thể thiếu những món rau tươi ăn kèm như nấm, rau muống, rau cải,…Nước lẩu Thái là sự kết hợp của nhiều hương vị nồng nàn và đậm đà: vị chua đặc trưng của lẩu, vị ngọt từ nước hầm và vị cay tinh tế …\n"
                      "Nếu bạn muốn tự mình thực hiện món này ở nhà thì hãy luôn nhớ "
                      "Cooky có sẵn pack ướp sẵn, chỉ cần order là có ngay cho bạn "
                      "trổ tài làm ngay nhé."
                      "Lẩu Thái hải sản chua cay là món ngon cuối tuần, "
                      "cho bữa tiệc gia đình. Lẩu Thái hải sản chua cay ngon "
                      "đúng chuẩn sẽ có nước dùng chua ngọt, cay nồng từ sả ớt, "
                      "kích thích vị giác, giúp ăn ngon miệng hơn. "
                      "Đặc biệt, những ngày trời lạnh ngồi quây quần bên nồi"
                      "lẩu Thái chua cay tỏa hương thơm nồng thì ấm lòng hết biết. \n "
                      "Đặc trưng của Lẩu Thái không thể thiếu vị cay của ớt, vị thơm của gừng, sả cùng lá chanh, kết hợp với vị ngọt của nước hầm xương, những nguyên liệu tươi sống của hải sản như cua, mực, tôm, sò, cá,… và đặc biệt không thể thiếu những món rau tươi ăn kèm như nấm, rau muống, rau cải,…Nước lẩu Thái là sự kết hợp của nhiều hương vị nồng nàn và đậm đà: vị chua đặc trưng của lẩu, vị ngọt từ nước hầm và vị cay tinh tế …\n"
                      "Nếu bạn muốn tự mình thực hiện món này ở nhà thì hãy luôn nhớ "
                      "Cooky có sẵn pack ướp sẵn, chỉ cần order là có ngay cho bạn "
                      "trổ tài làm ngay nhé."
                  ),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.7,
              right: Dimensions.width20*2.7,
              top: Dimensions.height10,
              bottom: Dimensions.height10,

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,icon: Icons.remove, backgroundColor: AppColors.mainColor),
                BigText(text: "\12.88 "+"X"+" 0", color : AppColors.mainBlackColor ,size: Dimensions.font26,),
                AppIcon(iconSize: Dimensions.iconSize24,iconColor: Colors.white , backgroundColor: AppColors.mainColor ,icon: Icons.add),

              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color : AppColors.mainColor,

                  )
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
        ],
      ),
    );
  }
}
