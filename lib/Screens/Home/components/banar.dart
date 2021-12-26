import 'package:doanltdd/constants.dart';
import 'package:flutter/material.dart';

class Banar extends StatelessWidget {
  const Banar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: size.width * 0.05),
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(
            "assets/images/anh1.png",
            width: size.width * 0.9,
          ),
        ),
      ],
    );
  }
}
