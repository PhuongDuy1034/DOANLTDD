import 'package:doanltdd/Screens/Home/components/body.dart';
import 'package:doanltdd/components/Nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/Navbar1.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: Navbar1(),
    );
  }
}
