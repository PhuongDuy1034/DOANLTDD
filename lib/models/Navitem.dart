import 'package:doanltdd/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;
  NavItem({this.id, this.icon, this.destination});
  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 1;
  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "assets/icons/home.sgv",
      destination: HomeScreen(),
    ),
    NavItem(
      id: 2,
      icon: "assets/icons/Heart Icon_2.svg",
    ),
    NavItem(
      id: 3,
      icon: "assets/icons/Cart Icon.svg",
    ),
    NavItem(
      id: 4,
      icon: "assets/icons/chat1.svg",
    ),
    NavItem(
      id: 5,
      icon: "assets/icons/user.svg",
    ),
  ];
}
