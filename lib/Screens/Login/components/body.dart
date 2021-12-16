import 'package:flutter/material.dart';
import 'package:doanltdd/Screens/Login/components/background.dart';
import 'package:doanltdd/Screens/Signup/signup_screen.dart';
import 'package:doanltdd/components/already_have_an_account_acheck.dart';
import 'package:doanltdd/components/rounded_button.dart';
import 'package:doanltdd/components/rounded_input_field.dart';
import 'package:doanltdd/components/rounded_password_field.dart';
import 'package:doanltdd/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/login_bottom1.png",
              width: size.width * 0.4,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
