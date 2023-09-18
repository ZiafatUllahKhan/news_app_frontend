//
//
// import 'package:country_picker/country_picker.dart';
// import 'package:flutter/cupertino.dart';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_switch/flutter_switch.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../../../../utils/colors.dart';
// final _lighttheme = ThemeData(
//   brightness: Brightness.dark,
//   textTheme: TextTheme(
//     bodyText2: TextStyle(
//       color: AppColor.whiteColor
//     )
//   )
// );
//
// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   var status1= false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         // elevation: ,
//         backgroundColor: AppColor.primaryColor,
//
//         title: Padding(
//           padding: const EdgeInsets.only(left: 110,top: 20),
//           child: Text("Profile", style: GoogleFonts.poppins(fontSize: 24,
//               color: AppColor.whiteColor, fontWeight: FontWeight.w500),),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: 70,),
//             Center
//               (child:
//                  CircleAvatar( radius: 50,
//                      child:
//                     Image.asset("assets/images/profile_screen_images/ProfileImage.png",
//                       height: 100, width: 100,)),),
//             SizedBox(height: 27,),
//             Padding(
//               padding: const EdgeInsets.only(left: 20,right: 20),
//               child: Row(
//                 children: [
//                   Container(
//                     height: 55,
//                     width: 135,
//                     decoration: BoxDecoration(
//                       color: AppColor.grayColor,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("Upload imange", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),)),
//                   ),
//                   SizedBox(width: 35,),
//                   Container(
//                     height: 55,
//                     width: 135,
//                     decoration: BoxDecoration(
//                       color: AppColor.primaryColor,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Center(child: Text("Save changes", style:  GoogleFonts.poppins
//                       (fontSize: 14, color: AppColor.whiteColor, fontWeight: FontWeight.w500),)),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 47,),
//             Container(
//               height: 55,
//               width: 318,
//               decoration: BoxDecoration(color: AppColor.blueColor,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Row(
//                 children: [
//
//                 ],
//               )
//
//             ),
//             SizedBox(height: 16,),
//             Container(
//               height: 55,
//               width: 318,
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(color: AppColor.blueColor,
//                 borderRadius: BorderRadius.circular(8),
//               ),
//
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Switch to dark mode", style: GoogleFonts.poppins
//                     (fontSize: 14, color: AppColor.whiteColor,
//                       fontWeight: FontWeight.w500),),
//                   FlutterSwitch(
//                      width: 50,
//                     height: 24,
//                     toggleSize: 17,
//                     activeColor: AppColor.grayColor,
//                     value: status1,
//                     onToggle: (val) {
//                       setState(() {
//                         status1 = val;
//                       });
//                     },
//                   ),
//                 ],
//               )
//
//             ),
//           ],
//         ),
//     ),);
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../models/them_model.dart';
import '../../../../utils/colors.dart';
import '../controller/profile_controller.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Ziafat controller = Get.put(Ziafat());

  var selected;
  List<Map> _myJson = [
    {
      "id" : "1",
      "image":"assets/images/profile_screen_images/USA.png",
      "name" : "English"
    },
    {
      "id" : "2",
      "image":"assets/images/profile_screen_images/pakistan.jpg",
      "name" : "Pakistan"
    },
    {
      "id" : "3",
      "image":"assets/images/profile_screen_images/Turkey.png",
      "name" : "Turkey"
    },
    {
      "id" : "4",
      "image":"assets/images/profile_screen_images/Iran.png",
      "name" : "Iran"
    },
    {
      "id" : "5",
      "image":"assets/images/profile_screen_images/China.png",
      "name" : "China"
    },
    {
      "id" : "6",
      "image":"assets/images/profile_screen_images/UAE.png",
      "name" : "UAE"
    },
    {
      "id" : "7",
      "image":"assets/images/profile_screen_images/Iraq.png",
      "name" : "Iraq"
    },
    {
      "id" : "8",
      "image":"assets/images/profile_screen_images/Palestine.png",
      "name" : "Palestine"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context,ThemModel themeNotifier,child){
      return Scaffold(
        // backgroundColor: AppColors.scaffol_bg,
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Profile",style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: AppColor.whiteColor
          ),),
          actions: [
            InkWell(
              onTap: (){
                Get.to(()=>());
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.logout,size: 30,),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child:
                CircleAvatar(
                  radius: 50,
                   child: Image.asset("assets/images/profile_screen_images/ProfileImage.png",
                     height: 100, width: 100,)
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 8),
                      child: Text("Upload imange",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColor.blackColor
                      ),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 15),
                      child: Text("Save changes",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColor.whiteColor
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 47,
              ),
              Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          buttonColor: Colors.white,
                          child: DropdownButton(
                            hint: Row(
                              children: [
                                Text("Select Language" ,
                                  style: GoogleFonts.poppins(fontSize: 14,
                                      fontWeight: FontWeight.w500,color:
                                      AppColor.blackColor),),
                                // Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                            value: selected,
                            onChanged: (newValue){
                              setState(() {
                                selected = newValue;
                              });
                            },
                            items: _myJson.map((languge) {
                              return DropdownMenuItem(
                                value: languge["id"].toString(),
                                child: Row(
                                  children: [
                                    Image.asset(languge["image"],width: 40,),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(languge["name"]),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      )),
                    ],
                  )
              ),

              SizedBox(
                height: 16,
              ),
              Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text( themeNotifier.isDark ? "Switch to dark mode" : "Switch to light mode",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),),
                        FlutterSwitch(
                          inactiveColor: Color(0xffD9D9D9),
                          activeColor: AppColor.blackColor,
                          width: 40.0,
                          height: 25.0,
                          toggleSize: 17,
                          value: themeNotifier.isDark ? false : true,
                          onToggle: (value) {
                            setState(() {
                              themeNotifier.isDark ? themeNotifier.isDark = false
                                  : themeNotifier.isDark = true;
                            });
                          },
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
        // bottomNavigationBar: CustomBottomNavBar(index: 4,),
      );
    });
  }
}