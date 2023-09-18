import 'package:flutter/material.dart';
import 'package:untitled1/utils/colors.dart';

import '../screens/dashbord/editor/screen/editor_screen.dart';
import '../screens/dashbord/home/screen/home_screen.dart';
import '../screens/dashbord/muffing_group/screen/muffin_group_screen.dart';
import '../screens/dashbord/new/screen/news_screen.dart';
import '../screens/dashbord/profile/screen/profile_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    EditorScreen(),
    MuffinGroupScreen(),
    NewsScreen(),
    ProfileScreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
             icon:  ImageIcon(
               AssetImage("assets/images/home_screen_images/HomeIcon.png"),
               color: AppColor.darckgrayColor,
             ),
             label: '',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home_screen_images/EditorIcon.png"),
            color: AppColor.darckgrayColor,
            ),
            label: '',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home_screen_images/BrwoseIcon.png"),
            color: AppColor.darckgrayColor,
            ),
            label: '',
            // backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home_screen_images/NotificationIcon.png"),
            color: AppColor.darckgrayColor,
              ),

            label: '',
            // backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home_screen_images/SettingIcon.png", ),
              color: AppColor.darckgrayColor,
            ),

            label: '',
            // backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.darckgrayColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
