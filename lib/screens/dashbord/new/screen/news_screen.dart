

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // elevation: ,
        backgroundColor: AppColor.primaryColor,

        title: Padding(
          padding: const EdgeInsets.only(left: 110,top: 20),
          child: Text("News", style: GoogleFonts.poppins(fontSize: 24,
              color: AppColor.whiteColor, fontWeight: FontWeight.w500),),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context,index) {
                // SizedBox(height: 29,);
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 193,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration( color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 29, top: 15),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset(
                              "assets/images/news_screen_images/MessageIcon.png",
                              height: 36.98, width: 36,),
                            title: Text("Info@boothlighhtml.com", style: GoogleFonts.poppins
                              (fontSize: 14,fontWeight: FontWeight.w500, color: AppColor.blackColor),),
                            subtitle: Row(
                              children: [
                                Text("12:45 pm", style: GoogleFonts.poppins
                                  (fontWeight: FontWeight.w400, fontSize: 12,color: AppColor.blackColor),),
                                SizedBox(width: 30,),
                                Text("11-12-2022", style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400,color: AppColor.blackColor),)
                              ],
                            )


                          ),
                          Text("Lorem Ipsum is simply dummy text of the printingand"
                              " typesetting industry. Lorem Ipsum has been theindustry's "
                              "standard dummy text ever since", style: GoogleFonts.poppins
                            (fontSize: 12, fontWeight: FontWeight.w400,color: AppColor.blackColor),),
                           Divider(
                             color: AppColor.whiteColor,
                            thickness: 1,

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 70),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset("assets/images/home_screen_images/EditorIcon.png",
                                    height: 24, width: 24,),
                                  VerticalDivider(
                                    color: AppColor.whiteColor,
                                    width: 80,
                                    indent: 0,
                                    endIndent: 1,
                                    thickness: 1,
                                  ),
                                  Image.asset("assets/images/home_screen_images/DeleteIcon.png",
                                    height: 26, width: 26,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
              )
          ],
        ),
      ),
    );
  }
}
