import 'package:flutter/material.dart';
import 'package:flutter_app_sale/utils/colors.dart';
import 'package:flutter_app_sale/widgets/big_text.dart';
import 'package:flutter_app_sale/widgets/icon_and_text_widget.dart';
import 'package:flutter_app_sale/widgets/small_text.dart';
class HomeFoodBody extends StatefulWidget {
  const HomeFoodBody({Key? key}) : super(key: key);

  @override
  State<HomeFoodBody> createState() => _HomeFoodBodyState();
}

class _HomeFoodBodyState extends State<HomeFoodBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 330,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context , position){ // 1 ngữ cảnh và chỉ mục (vị trí của position)
       return _buildPageItem(position);
    }),
    );
  }
  Widget _buildPageItem(int index){

    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(right: 10 , left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/image/food0.png"
                  )
              )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 130,
            margin: EdgeInsets.only(right: 30 , left: 30 , bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10 ,left: 10 ,right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Koraen Food"),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return Icon(Icons.star , color: AppColors.mainColor,);
                        }),

                      ),
                      SizedBox(width: 10,),
                      SmallText(text: "4.5"),
                      SizedBox(width: 10,),
                      SmallText(text: "1278"),
                      SizedBox(width: 10,),
                      SmallText(text: "Comment"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      IconAndTextWidget(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconColor: AppColors.iconColor1
                      ),
                      SizedBox(width: 10,),
                      IconAndTextWidget(
                          icon: Icons.location_on,
                          text: "1.7 km",
                          iconColor: AppColors.mainColor
                      ),
                      SizedBox(width: 10,),
                      IconAndTextWidget(
                          icon: Icons.watch_later_outlined,
                          text: "32 min",
                          iconColor: AppColors.iconColor2
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
