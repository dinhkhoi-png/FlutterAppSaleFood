import 'package:flutter/material.dart';
import 'package:flutter_app_sale/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';
class AppColumn extends StatelessWidget {
  const AppColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: Dimensions.height20 ,left: Dimensions.height20 ,right: Dimensions.height20),
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
          BigText(text: "Koraen Food"),
          SizedBox(height: Dimensions.height10,),
          Row(
            children: [
              Wrap(
                children: List.generate(5, (index) {
                  return Icon(Icons.star , color: AppColors.mainColor,);
                }),

              ),
              SizedBox(width: Dimensions.width10,),
              SmallText(text: "4.5"),
              SizedBox(width: Dimensions.width10,),
              SmallText(text: "1278"),
              SizedBox(width: Dimensions.width10,),
              SmallText(text: "Comment"),
            ],
          ),
          SizedBox(height: Dimensions.height20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconAndTextWidget(
                  icon: Icons.circle_sharp,
                  text: "Normal",
                  iconColor: AppColors.iconColor1
              ),
              SizedBox(width: Dimensions.width10,),
              IconAndTextWidget(
                  icon: Icons.location_on,
                  text: "1.7 km",
                  iconColor: AppColors.mainColor
              ),
              SizedBox(width: Dimensions.width10,),
              IconAndTextWidget(
                  icon: Icons.watch_later_outlined,
                  text: "32 min",
                  iconColor: AppColors.iconColor2
              ),
            ],
          )
        ],
      ),
    );
  }
}
