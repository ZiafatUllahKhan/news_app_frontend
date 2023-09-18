import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/utils/colors.dart';
import '../../../../reuseable_widgets/bottom_navigation_bar.dart';
import '../../../dashbord/home/screen/home_screen.dart';
import '../../signup/screen/signup_screen.dart';
import '../controller/login_controller.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginScreen_C0ntroller>(
          init: LoginScreen_C0ntroller(),
          builder: (controller) {
            return SingleChildScrollView(
              child: Form(
                key: controller.Login_ScreenFormKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 37,
                        width: 50,
                      ),
                      Image.asset(
                        "assets/images/auth/LoginImage.png",
                        height: 272,
                        width: 272,
                      ),
                      Text(
                        "Welcome Back!",
                        style: GoogleFonts.poppins(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Please login to your account",
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Container(
                        height: 54,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColor.LightgrayColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: AppColor.blackColor),
                              border: InputBorder.none,
                              hintText: "something@123,com",
                              fillColor: Colors.black,
                              focusColor: Colors.black,
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Image.asset(
                                  'assets/images/auth/UserImage.png',
                                  height: 20,
                                  width: 20,
                                ),
                              )
                              //Icon(Icons.edit,color: Colors.green,)
                              ),
                          controller: controller.useerNameController,
                          validator: (val) {
                            return controller.validate_userName(val);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: 54,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor.LightgrayColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.black,
                              focusColor: Colors.black,
                              border: InputBorder.none,
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Image.asset(
                                  'assets/images/auth/PasswordImage.png',
                                  height: 20,
                                  width: 20,
                                ),
                              )
                              //Icon(Icons.edit,color: Colors.green,)
                              ),
                          controller: controller.passwordController,
                          validator: (val) {
                            return controller.validate_password(val);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Forget Password?",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          controller.validateForm();
                          // Get.to(()=>LoginScreen_C0ntroller());
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
                              Text(
                                "Login",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: AppColor.whiteColor,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Or connect using",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => HomeScreen());
                            },
                            child: Container(
                              height: 39,
                              width: 111,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColor.primaryColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/auth/FacebookImage.png",
                                    height: 19.31,
                                    width: 10.27,
                                  ),
                                  SizedBox(
                                    width: 11.66,
                                  ),
                                  Text(
                                    "Facebook",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: AppColor.whiteColor,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 87,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => HomeScreen());
                            },
                            child: Container(
                              height: 39,
                              width: 111,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColor.redColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/auth/GoogleImages.png",
                                    height: 20,
                                    width: 19.47,
                                  ),
                                  SizedBox(
                                    width: 10.5,
                                  ),
                                  Text(
                                    "Google",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: AppColor.whiteColor,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Don't have an account? Signin",
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
