

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../reuseable_widgets/bottom_navigation_bar.dart';

class LoginScreen_C0ntroller extends GetxController{
  final GlobalKey<FormState>
  Login_ScreenFormKey= GlobalKey<FormState>();
  TextEditingController useerNameController=TextEditingController();
 TextEditingController passwordController=TextEditingController();

 validateForm() async {
   if (!Login_ScreenFormKey.currentState!.validate()) {
    log("Form Not Valid" as num);
   } else {
     Get.to(BottomNavigationBarScreen());
   }
 }
  String? validate_userName(val) {
    if (val.isEmpty) {
      return "Please Enter name";
    }
    else if (val.length < 3)
    {
      return "please Enter minimum 3 character";
    } else
      return null;
  }
 String? validate_password(val){
   if (val.isEmpty) {
     return "Please Enter your password";
   } else if (val.length < 6) {
     return "please Enter minimum 6 character";
   } else
     return null;
 }


}