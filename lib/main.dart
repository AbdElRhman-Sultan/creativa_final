import 'package:creativa_second/Cubit/cubit_product_cubit.dart';
import 'package:creativa_second/Screens/Home_page.dart';
import 'package:creativa_second/Screens/Navigator_screen.dart';
import 'package:creativa_second/Screens/Profile_screen.dart';
import 'package:creativa_second/Screens/Setting_screen.dart';
import 'package:creativa_second/Screens/Splash_screen.dart';
import 'package:creativa_second/Screens/login_screen.dart';
import 'package:creativa_second/Screens/signup_screen.dart';
import 'package:creativa_second/Screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductCubit(),),
      ],
      child: MaterialApp(
        routes: {
          "SplashScreen": (context) {
            return SplashScreen();
          },
          "StartScreen": (context) {
            return Start();
          },
          "NavigatorScreen": (context) {
            return NavigatorScreen();
          },
          "ProfileScreen": (context) {
            return ProfilePage();
          },
          "SettingScreen": (context) {
            return SettingScreen();
          },
          "/login": (context) {
            return LoginPage();
          },
          "Signup": (context) {
            return SignUp();
          },
          "HomePage": (context) {
            return HomePage();
          },
        },
        debugShowCheckedModeBanner: false,
        initialRoute: "SplashScreen",
      ),
    );
  }
}
