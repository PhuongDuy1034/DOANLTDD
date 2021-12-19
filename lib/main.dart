import 'package:doanltdd/Screens/Profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:doanltdd/Screens/Welcome/welcome_screen.dart';
import 'package:doanltdd/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DOANLTDD',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ProfileScreen(),
    );
  }
}
