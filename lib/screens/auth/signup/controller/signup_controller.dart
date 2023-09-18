

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../reuseable_widgets/bottom_navigation_bar.dart';

class SignupScreen_Controller extends GetxController{
  final GlobalKey<FormState>Signup_ScreenFormKey=GlobalKey<FormState>();

  TextEditingController userNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController conformPasswordController=TextEditingController();

  validateForm()  async {
    if (!Signup_ScreenFormKey.currentState! .validate()) {
      log("Form Not valide");
    } else {
      Get.to(BottomNavigationBarScreen());
    }
  }

  String? validate_email(val) {
    bool emailValid =
    RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(val);
    if (val.isEmpty) {
      return "Please Enter your email";
    } else if (emailValid == false) {
      return "email is not valid";
    } else
      return null;
  }
  String? validate_password(val) {
    if (val.isEmpty) {
      return "Please Enter your password";
    } else if (val.length < 6) {
      return "please Enter minimum 6 character";
    } else
      return null;
  }
  String? validate_cpassword(val) {
    if (val.isEmpty) {
      return "Please Enter your password";
    } else if (passwordController.value.text != conformPasswordController.value.text){
      return "password does not match";
    } else
      return null;
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
  String? validate_phone(val){
    if (val.isEmpty){
      return "please Enter contact number";
    }else if (val.length == 11) {
      return " please Enter minimu 11 character";
    }
  }
}