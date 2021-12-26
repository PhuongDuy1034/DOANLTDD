import 'package:doanltdd/Screens/Home/components/icon_btn_with.dart';
import 'package:doanltdd/Screens/Home/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:doanltdd/sizeconfig.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
