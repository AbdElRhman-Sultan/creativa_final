import 'package:creativa_second/Screens/Home_page.dart';
import 'package:creativa_second/Screens/Profile_screen.dart';
import 'package:creativa_second/Screens/Setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int currentIndex=0;
  List<Widget> listOfScreens= [
    HomePage(),
    ProfilePage(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        height: 45,
        color: Colors.white,
        backgroundColor: Colors.indigo,
        animationCurve: Curves.easeInOutCubicEmphasized,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          Icon(Icons.home, size: 30, color: Colors.indigo,),
          Icon(Icons.person, size: 30,color: Colors.indigo,),
          Icon(Icons.settings, size: 30,color: Colors.indigo,),
        ],
      ),
      body: listOfScreens[currentIndex],
    );
  }
}
