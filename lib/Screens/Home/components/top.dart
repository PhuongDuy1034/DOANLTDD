import 'package:doanltdd/constants.dart';
import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "DNS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(width: size.width * 0.01),
            Image.asset(
              "assets/images/login_bottom1.png",
              width: size.width * 0.1,
            ),
          ],
        ),
      ],
    );
  }
}
