
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/utils/colors.dart';

import '../../../../reuseable_widgets/bottom_navigation_bar.dart';
import '../../../dashbord/home/screen/home_screen.dart';
import '../../login/screen/login_screen.dart';
import '../controller/signup_controller.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SignupScreen_Controller>(
          init: SignupScreen_Controller(),
          builder: (controller){
            return SingleChildScrollView(
            child: Form(
              key: controller.Signup_ScreenFormKey,
              child: Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              SizedBox(height: 40,),
              InkWell(
              onTap: (){
              Get.to(()=>loginScreen());
              },
              child: Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.arrow_back, color: AppColor.blackColor,)),
              ),
              Text("Lets get started", style: GoogleFonts.poppins
    (fontSize: 24, fontWeight: FontWeight.w500),),
    Text("Create your account to get started",style: GoogleFonts.poppins
    (fontSize: 10,fontWeight: FontWeight.w400),),
    SizedBox(height: 75,),
    Container(
    height: 54,
    width: double.infinity,
    decoration: BoxDecoration(
    color: AppColor.LightgrayColor,
    borderRadius: BorderRadius.circular(100)

    ),
    child: TextFormField(
    decoration: InputDecoration(hintStyle: TextStyle(color: AppColor.blackColor),

    border: InputBorder.none,

    hintText: "something@123,com",
    prefixIcon:Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Image.asset('assets/images/auth/UserImage.png', height: 20,width: 20,),
    )
    //Icon(Icons.edit,color: Colors.green,)
    ),
      controller: controller.userNameController,

      validator: (val){
        return controller.validate_userName(val);
      },
    ),
    ),
    SizedBox(height: 20,),
    Container(
    height: 54,
    width: double.infinity,
    decoration: BoxDecoration(
    color: AppColor.LightgrayColor,
    borderRadius: BorderRadius.circular(100)

    ),
    child: TextFormField(
    decoration: InputDecoration( hintStyle: TextStyle(color: AppColor.darckgrayColor),
    border: InputBorder.none,
    hintText: "Email",

    prefixIcon:Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Image.asset('assets/images/auth/EmailImage.png', height: 20,width: 20,),
    )
    //Icon(Icons.edit,color: Colors.green,)
    ),
      controller: controller.emailController,

      validator: (val){
        return controller.validate_email(val);
      },
    ),
    ),
    SizedBox(height: 20,),
    Container(
    height: 54,
    width: double.infinity,
    decoration: BoxDecoration(
    color: AppColor.LightgrayColor,
    borderRadius: BorderRadius.circular(100)

    ),
    child: TextFormField(
    decoration: InputDecoration( hintStyle: TextStyle(color: AppColor.darckgrayColor),
    border: InputBorder.none,
    hintText: "Phone",
    prefixIcon:Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Image.asset('assets/images/auth/PhoneImage.png', height: 20,width: 20,),
    )
    //Icon(Icons.edit,color: Colors.green,)
    ),
      controller: controller.phoneController,

      validator: (val){
        return controller.validate_phone(val);
      },
    ),
    ),
    SizedBox(height: 20,),
    Container(
    height: 54,
    width: double.infinity,
    decoration: BoxDecoration(
    color: AppColor.LightgrayColor,
    borderRadius: BorderRadius.circular(100),

    ),
    child: TextFormField(
    decoration: InputDecoration( hintStyle: TextStyle(color: AppColor.darckgrayColor),
    border: InputBorder.none,
    hintText: "Password",
    prefixIcon:Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Image.asset('assets/images/auth/PasswordImage.png', height: 20,width: 20,),
    )
    //Icon(Icons.edit,color: Colors.green,)
    ),
      controller: controller.passwordController,

      validator: (val){
        return controller.validate_password(val);
      },
    ),
    ),
    SizedBox(height: 20,),
    Container(
    height: 54,
    width: double.infinity,
    decoration: BoxDecoration(
    color: AppColor.LightgrayColor,
    borderRadius: BorderRadius.circular(100),
    ),
    child: TextFormField(
    decoration: InputDecoration( hintStyle:
    TextStyle(color: AppColor.darckgrayColor),
    border: InputBorder.none,
    hintText: "Password",
    prefixIcon:Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Image.asset('assets/images/auth/PasswordImage.png', height: 20,width: 20,),
    )
    //Icon(Icons.edit,color: Colors.green,)
    ),
      controller: controller.conformPasswordController,

      validator: (val){
        return controller.validate_cpassword(val);
      },
    ),
    ),
    SizedBox(height: 46,),
    InkWell(
    onTap: (){
    controller.validateForm();
    },
    child: Container(
    height: 52,
    width: 174,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    color: AppColor.blueColor,
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Login", style: GoogleFonts.poppins(fontSize: 14,color:
    AppColor.whiteColor, fontWeight: FontWeight.w500,),)
    ],
    ),
    ),
    ),
    SizedBox(height: 80,),
    Text("Already have an account?", style: GoogleFonts.poppins
    (fontSize: 14,fontWeight: FontWeight.w500),),
    Text("Login", style: GoogleFonts.poppins(
    fontSize: 14,color: AppColor.primaryColor
    ,fontWeight: FontWeight.w500),)
    ],
    ),
    ),

    ),
            ),
    );
    }
    )
      );
  }
}
