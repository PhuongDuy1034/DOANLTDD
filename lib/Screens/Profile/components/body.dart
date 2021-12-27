import 'package:flutter/material.dart';
import 'package:doanltdd/constants.dart';
import 'package:doanltdd/components/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  set size(Size size) {}
  Widget textfield({@required hintText}) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin tài khoản'),
        elevation: 0.0,
        backgroundColor: const Color(0xFF03A9F4),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: size.height * 0.04),
                    textfield(
                      hintText: 'Username',
                    ),
                    textfield(
                      hintText: 'Email',
                    ),
                    textfield(
                      hintText: 'Password',
                    ),
                    textfield(
                      hintText: 'Phone',
                    ),
                    textfield(
                      hintText: 'ShippingAddress',
                    ),
                    // Container(
                    //   height: 50,
                    //   width: 200,
                    RoundedButton(
                      text: "Update",
                      press: () {},
                    ),
                    // child: ElevatedButton(
                    //   style: ButtonStyle(
                    //     backgroundColor:
                    //         MaterialStateProperty.all(Colors.black54),
                    //   ),
                    //   onPressed: () {},
                    //   child: const Center(
                    //     child: Text(
                    //       "Update",
                    //       style: TextStyle(
                    //         fontSize: 20,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // )
                  ],
                ),
              )
            ],
          ),
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const Padding(
              //   padding: EdgeInsets.all(20),
              //   // child: Text(
              //   //   "Profile",
              //   //   style: TextStyle(
              //   //     fontSize: 35,
              //   //     letterSpacing: 1.5,
              //   //     color: Colors.white,
              //   //     fontWeight: FontWeight.w600,
              //   //   ),
              //   // ),
              // ),
              Container(
                padding: const EdgeInsets.all(10.0),
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/login_bottom1.png"),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 300, left: 80),
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                icon: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xFF03A9F4);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
