import 'package:doanltdd/Screens/Home/components/banar.dart';
import 'package:doanltdd/Screens/Home/components/home_heder.dart';
import 'package:doanltdd/Screens/Home/components/popular_product.dart';
import 'package:doanltdd/Screens/Home/components/setion_tittle.dart';
import 'package:doanltdd/Screens/Home/components/top.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Top(),
            SizedBox(height: (2)),
            HomeHeader(),
            SizedBox(height: 2),
            Banar(),
            // // SizedBox(height: 2),
            //SectionTitle(title: "Sản Phẩm nổi Bật", press: () {}),
            SizedBox(height: 2),
            PopularProducts(title1: "Sản Phẩm Mới "),
            SizedBox(height: 10),
            //PopularProducts(title1: "Sản Phẩm Bán Chạy"),
          ],
        ),
      ),
    );
  }
}
