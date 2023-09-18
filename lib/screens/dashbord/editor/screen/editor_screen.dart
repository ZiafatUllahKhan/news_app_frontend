

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({Key? key}) : super(key: key);

  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  var status1 = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // elevation: ,
        backgroundColor: AppColor.primaryColor,

        title: Padding(
          padding: const EdgeInsets.only(left: 110,top: 20),
          child: Text("Editor", style: GoogleFonts.poppins(fontSize: 24,
              color: AppColor.whiteColor, fontWeight: FontWeight.w500),),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          // border: Border.all(color: AppColor.)
                            color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                                  offset: Offset(0, 1),
                                  color: AppColor.grayColor.withOpacity(0.5),
                                  blurRadius: 2
                              )
                            ]
                        ),
                        height: 100,
                        //margin: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width,
                        child: ListTile(
                          leading: Image.asset("assets/images/editor_screen_images/EditorImage1.png"),
                          title: Text("Name1234",style: GoogleFonts.poppins
                            (fontSize: 15,fontWeight: FontWeight.w500,color: AppColor.blackColor ),),
                          subtitle: Text("Some hint text....", style: GoogleFonts.poppins
                            (fontSize: 15,fontWeight: FontWeight.w500,color: AppColor.blackColor ),),
                          trailing: Container(
                            height: 25,
                            width: 40,
                            child: Row(
                              children: [
                                Image.asset("assets/images/home_screen_images/EditorIcon.png", height: 15, width: 15,),
                                SizedBox(width: 6,),
                                Image.asset("assets/images/home_screen_images/DeleteIcon.png", height: 15, width: 15,),
                              ],
                            ),
                          ),
                        ),

                      ),
                    );
                  }),
              Divider(
                thickness: 1,
                // color: ,
              ),
              Card(
                child: ListTile(

                  leading: Container(
                    height: 59,
                    width: 79,
                    decoration: BoxDecoration(
                        color: AppColor.grayColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  title: Text("+ add heading",style: GoogleFonts.poppins
                    (fontWeight: FontWeight.w400, fontSize: 15),),
                  subtitle: Text("+ add text", style: GoogleFonts.poppins
                    (fontWeight: FontWeight.w400,fontSize:15),),

                  trailing:
                  Container(
                    width: 50,
                    height: 24,
                    child: FlutterSwitch(
                      width: 50,
                      height: 24,
                      activeColor: AppColor.grayColor,
                      value: status1,
                      onToggle: (val) {
                        setState(() {
                          status1 = val;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
