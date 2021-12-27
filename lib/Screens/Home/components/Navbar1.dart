import 'package:doanltdd/Screens/Home/home_screen.dart';
import 'package:doanltdd/Screens/Profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Navbar1 extends StatelessWidget {
  const Navbar1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 45,
      decoration: BoxDecoration(
        color: Color(0xFFE3F2FD),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              height: 22,
              color: Color(0xFF03A9F4),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              height: 22,
              color: Color(0xFF03A9F4),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Cart Icon.svg",
              height: 22,
              color: Color(0xFF03A9F4),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/chat1.svg",
              height: 22,
              color: Color(0xFF03A9F4),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            icon: SvgPicture.asset(
              "assets/icons/user.svg",
              height: 22,
              color: Color(0xFF03A9F4),
            ),
          ),
        ],
      ),
    );
  }
}
