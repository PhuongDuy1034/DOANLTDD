import 'package:doanltdd/Screens/Home/components/Navbar1.dart';
import 'package:doanltdd/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: Navbar1(),
    );
  }
}
