
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/screens/auth/welcome_screen.dart';

import 'models/them_model.dart';


void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=> ThemModel(),
        child: Consumer(
          builder: (context,ThemModel themeModal,child){
            return GetMaterialApp(
              theme: themeModal.isDark ? ThemeData.dark() : ThemeData.light(),
              debugShowCheckedModeBanner: false,
              home: WelcomeScreen(),
            );
          },
        )
    );
  }
}