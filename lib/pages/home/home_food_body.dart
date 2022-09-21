
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_sale/utils/colors.dart';
import 'package:flutter_app_sale/utils/dimensions.dart';
import 'package:flutter_app_sale/widgets/app_column.dart';
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
  var _currPageValue = 0.0 ;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewController ;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;

      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /**
         * Slider
         */
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context , position){ // 1 ngữ cảnh và chỉ mục (vị trí của position)
                return _buildPageItem(position);
              }),
        ),
          //dots
          new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
          ),
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Thực Đơn"),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: "." , color: Colors.black26),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Menu chính",),
              )
            ],
          ),
        ),
        //list food
         ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context , index){
                return Container(
                  margin: EdgeInsets.only(right: Dimensions.width20, left: Dimensions.width20,bottom: Dimensions.height10),
                  child: Row(
                    children: [
                      //image section
                      Container(
                        width:Dimensions.listViewImg,
                        height: Dimensions.listViewImg,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white38,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/image/food0.png"
                                )
                            )
                        ),
                      ),
                      //text
                      Expanded(
                        child: Container(
                          height: Dimensions.listViewCont,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius20),
                              bottomRight: Radius.circular(Dimensions.radius20),
                            ),
                            color: Colors.white,

                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 7 ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "Tôm Đậu Hủ Thố Hải Sản"),
                                SizedBox(height: Dimensions.height10,),
                                SmallText(text: "Saefood With Tofu Clay Pot"),
                                SizedBox(height: Dimensions.height10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                          ),
                        ),
                      )
                    ],
                  ),
                );

              }),

      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();

    if(index == _currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if (index == _currPageValue.floor() + 1)
    {
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if (index == _currPageValue.floor() - 1)
    {
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);

    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewController,
            margin: EdgeInsets.only(right: Dimensions.width10 , left: Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
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
              height: Dimensions.pageTextController,
              margin: EdgeInsets.only(right: Dimensions.width30 , left: Dimensions.width30 , bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFe8e8e),
                      blurRadius: 6.0,
                      offset: Offset(0 ,5)
                    )
                  ]
              ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height10,left: Dimensions.height20 ,right: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Colors.white
                ),
                child:  AppColumn(text: "HongKong Food"),
              ),

            ),
          ),

        ],
      ),
    );
  }
}
