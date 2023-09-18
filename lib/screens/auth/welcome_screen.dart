

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/screens/auth/signup/screen/signup_screen.dart';

import '../../utils/colors.dart';
import 'login/screen/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,),
          child: Column(
            children: [
              SizedBox( height: 73,),
              Text("Welcome", style: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.w500),),

              SizedBox(height: 29,),
              Padding(
                padding: const EdgeInsets.only(left: 40),

                child: Image.asset("assets/images/auth/WelcomImage.png", height: 256,width: 256,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 40,height: 30,),
                  Text("Header One", style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 24),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Lorem Ipsum is simply dummy text of "
                    "the printing and typesetting industry. "
                    "Lorem Ipsum has been the industry's "
                    "standard dummy text ever since the 1500s", style: GoogleFonts.poppins
                  (fontSize: 14, fontWeight: FontWeight.w400),),
              ),
              SizedBox(height: 80,),
              InkWell(
                onTap: (){
                  Get.to(()=>loginScreen());
                },
                child: Container(
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.LightgrayColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Login", style: GoogleFonts.poppins(fontSize: 14,color:
                      AppColor.blackColor, fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Get.to(()=>SignupScreen());
                },
                child: Container(
                  height: 56,
                  width: 307,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.blueColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Register", style: GoogleFonts.poppins(fontSize: 14,color:
                      AppColor.whiteColor, fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
