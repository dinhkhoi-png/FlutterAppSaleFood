import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_sale/pages/auth/sign_up_page.dart';
import 'package:flutter_app_sale/utils/colors.dart';
import 'package:flutter_app_sale/utils/dimensions.dart';
import 'package:flutter_app_sale/widgets/app_text_field.dart';
import 'package:flutter_app_sale/widgets/big_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: Dimensions.screenHeight*0.05,),
            Container(
              height: Dimensions.screenHeight*0.25,
              child: Center(
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  backgroundImage: AssetImage(
                      "assets/image/logo part 1.png"
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: Dimensions.width20),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WellCome",
                    style: TextStyle(
                      fontSize: Dimensions.font20*4-Dimensions.font20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Sign in your account",
                    style: TextStyle(
                        fontSize: Dimensions.font16,
                        color: Colors.grey[500],
                        // fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20,),
            AppTextField(textController: emailController,
                hintText: "Email", icon: Icons.email),
            SizedBox(height: Dimensions.height20,),
            AppTextField(textController: passwordController,
                hintText: "Password", icon: Icons.password_sharp),

            SizedBox(height: Dimensions.height20,),
            Row(
              children: [
                Expanded(child: Container()),
                RichText(
                    text: TextSpan(
                        text: "Sign in your account",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: Dimensions.font20,

                        ))
                ),
                SizedBox(width: Dimensions.width20,),
              ],
            ),
            SizedBox(height: Dimensions.height30,),
            Container(
              width: Dimensions.screenWidth/2,
              height: Dimensions.screenHeight/13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: AppColors.mainColor,
              ),
              child: Center(child: BigText(text: "Sign In",size: Dimensions.font26,color: Colors.white,)),
            ),
            SizedBox(height: Dimensions.screenHeight*0.05,),
            RichText(
                text: TextSpan(
                    text: "Don\'t you have account? ",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: Dimensions.font20
                    ),
                  children: [
                    TextSpan(
                    recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage(),transition: Transition.fade),
                    text: "Create ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: AppColors.mainBlackColor,
                        fontSize: Dimensions.font20
                    )
                    )
                  ]
                )
            ),
            SizedBox(height: Dimensions.height10,),

          ],
        ),
      ),
    );
  }
}
