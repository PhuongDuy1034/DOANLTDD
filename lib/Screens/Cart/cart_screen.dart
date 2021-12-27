import 'package:flutter/material.dart';

import '../../constants.dart';

class Cart extends StatelessWidget {
  const Cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Giỏ hàng của tôi'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.delete,
              size: 40,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Row(
            children: [
              Container(
                width: 140,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/images/login_bottom1.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
