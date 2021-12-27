import 'package:doanltdd/Screens/Profile/profile_screen.dart';
import 'package:doanltdd/models/Navitem.dart';
import 'package:flutter/material.dart';
import 'package:doanltdd/Screens/Welcome/welcome_screen.dart';
import 'package:doanltdd/constants.dart';

import 'Screens/Details/detail_screen.dart';
import 'Screens/Home/home_screen.dart';
import 'Screens/Login/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //create:(context) => NavItem();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DOANLTDD',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
