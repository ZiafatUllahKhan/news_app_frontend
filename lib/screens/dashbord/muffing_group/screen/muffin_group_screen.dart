

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors.dart';

class MuffinGroupScreen extends StatelessWidget {
  const MuffinGroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // elevation: ,
        backgroundColor: AppColor.primaryColor,

        title: Padding(
          padding: const EdgeInsets.only(left: 80,top: 20),
          child: Text("Muffingroup", style: GoogleFonts.poppins(fontSize: 24,
              color: AppColor.whiteColor, fontWeight: FontWeight.w500),),
        ),
      ),
      body: Image.asset("assets/images/muffring_screen_images/MuffringImage.png",
        fit: BoxFit.fill,
        height: double.infinity, width: double.infinity,),
    );
  }
}
