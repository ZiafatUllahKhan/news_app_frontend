

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:untitled1/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // elevation: ,
        backgroundColor: AppColor.primaryColor,

        title: Padding(
          padding: const EdgeInsets.only(left: 80,top: 20),
          child: Text("Dashboard", style: GoogleFonts.poppins(fontSize: 24,
              color: AppColor.whiteColor, fontWeight: FontWeight.w500),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    height: 193,
                    width: double.infinity,
                    decoration: BoxDecoration(color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new CircularPercentIndicator(
                              radius: 50.0,
                              lineWidth: 10.0,
                              percent: 0.25,
                              center: new Text("75%",style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500,
                                  color: AppColor.blackColor,fontSize: 15),),
                              progressColor: Colors.white,
                              backgroundColor: Colors.red,
                            ),
                            SizedBox(height: 18,),
                            Text("Course progress", style: GoogleFonts.poppins
                              (fontSize: 15,fontWeight: FontWeight.w500, color: AppColor.blackColor),)
                          ],
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new CircularPercentIndicator(
                              radius: 50.0,
                              lineWidth: 10.0,
                              percent: 1,
                              center: new Text("100%",style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500,
                                  color: AppColor.blackColor,fontSize: 15),),
                              progressColor: Colors.green,
                            ),
                            SizedBox(height: 18,),
                            Text("Course grade", style: GoogleFonts.poppins
                              (fontSize: 15,fontWeight: FontWeight.w500,color: AppColor.blackColor),)
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              height: 445,
              width: double.infinity,
              decoration: BoxDecoration(
                 color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(12),
                  boxShadow: [
              BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
      ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8,),
                  Center(
                    child: Container(
                      height: 6,
                      width: 76,
                      decoration: BoxDecoration(color: AppColor.grayColor,
                         borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),

                  SizedBox(height: 17,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Premium Content", style: GoogleFonts.poppins
                      (fontSize: 18,fontWeight: FontWeight.w600,color: AppColor.blackColor),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: Text("In order to access this content you will need to purchasethe "
                        "premium plan below", style: GoogleFonts.poppins
                      (fontSize: 12,fontWeight: FontWeight.w400,color: AppColor.blackColor),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 111,
                    width: 336,
                    decoration: BoxDecoration(
                       color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.grayColor,
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/home_screen_images/image .png",height: 86, width: 129,),
                        Text("How to launch an \n NFT collection!", style: GoogleFonts.poppins
                          (fontSize: 15, fontWeight: FontWeight.w500, color: AppColor.blackColor),)
                      ],
                    ),
                    
                  ),
                  Row(
                    children: [
                      Checkbox(
                          side: BorderSide(color: AppColor.blackColor),
                        focusColor: AppColor.blackColor,
                           checkColor: AppColor.whiteColor,
                          activeColor: AppColor.primaryColor,
                          value: isChecked1, onChanged: (val){
                        setState(() {
                          isChecked1 = val!;

                        });
                      }),

                      Text("Access to all premium content", style: GoogleFonts.poppins(
                        fontSize: 12, color: AppColor.blackColor,fontWeight: FontWeight.w300,
                      ),)
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          side: BorderSide(color: AppColor.blackColor),
                          shape: RoundedRectangleBorder(
                          ),
                          checkColor: AppColor.whiteColor,
                          activeColor: AppColor.primaryColor,
                          value: isChecked2, onChanged: (val){
                        setState(() {
                          isChecked2 = val!;
                        });
                      }),

                      Text("Unlimited access to all free content", style: GoogleFonts.poppins(
                        fontSize: 12, color: AppColor.blackColor,fontWeight: FontWeight.w300,
                      ),)
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          side: BorderSide(color: AppColor.blackColor),
                          shape: RoundedRectangleBorder(

                          ),
                          checkColor: AppColor.whiteColor,
                          activeColor: AppColor.primaryColor,
                          value: isChecked3, onChanged: (val){
                        setState(() {
                          isChecked3 = val!;
                        });
                      }),

                      Text("Promos in for person lessons", style: GoogleFonts.poppins(
                        fontSize: 12, color: AppColor.blackColor,fontWeight: FontWeight.w300,
                      ),)
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 56,
                      width: 307,
                      decoration: BoxDecoration(color: AppColor.darckblueColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center
                        (child: Text('Subscribe \$14.99/mo', style: GoogleFonts.poppins
                        (fontSize: 12, color: AppColor.whiteColor, fontWeight: FontWeight.w500) ,)),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
