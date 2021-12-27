import 'package:doanltdd/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:doanltdd/Screens/Login/login_screen.dart';
import 'package:doanltdd/Screens/Signup/components/background.dart';
import 'package:doanltdd/Screens/Signup/components/or_divider.dart';
import 'package:doanltdd/Screens/Signup/components/social_icon.dart';
import 'package:doanltdd/components/already_have_an_account_acheck.dart';
import 'package:doanltdd/components/rounded_button.dart';
import 'package:doanltdd/components/rounded_input_field.dart';
import 'package:doanltdd/components/rounded_password_field.dart';
import 'package:doanltdd/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/login_bottom1.png",
              width: size.width * 0.3,
            ),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Confirm Password",
              icon: Icons.lock,
              icon1: Icons.visibility,
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
