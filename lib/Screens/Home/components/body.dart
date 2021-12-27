// import 'package:doanltdd/sizeconfig.dart';
// import 'package:flutter/material.dart';
// import 'package:doanltdd/Screens/Login/components/background.dart';

// import 'package:doanltdd/constants.dart';
// import 'package:flutter_svg/svg.dart';

// class Body extends StatelessWidget {
//   const Body({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Background(
//       child: SingleChildScrollView(
// child: Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: <Widget>[
//     Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           "DNS",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 30,
//             color: kPrimaryColor,
//           ),
//         ),
//         SizedBox(width: size.width * 0.01),
//         Image.asset(
//           "assets/images/login_bottom1.png",
//           width: size.width * 0.2,
//         ),
//       ],
//     ),
//             SizedBox(height: size.height * 0.03),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: (20)),
//               child: Row(
//                 children: [
//                   Container(
//                     width: size.width * 0.6,
//                     decoration: BoxDecoration(
//                       color: kPrimaryColor.withOpacity(0.1),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: TextField(
//                       onChanged: (value) {},
//                       decoration: InputDecoration(
//                         enabledBorder: InputBorder.none,
//                         focusedBorder: InputBorder.none,
//                         hintText: "Search Product",
//                         prefixIcon: Icon(Icons.search),
//                         contentPadding: EdgeInsets.symmetric(
//                           horizontal: (20),
//                           vertical: (9),
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Image.asset(
//                 "assets/images/anh1.png",
//                 width: size.width * 1,
//               ),
//             ),
// Container(
//   margin: EdgeInsets.symmetric(horizontal: (20)),
//   width: double.infinity,
//   height: 90,
//   decoration: BoxDecoration(
//       color: Color(0xFFE3F2FD),
//       borderRadius: BorderRadius.circular(20)),
// ),
//           ],
//         ),
//       ),
//     );
//   }
// }
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
            // SizedBox(height: 2),
            // SectionTitle(title: "Sản Phẩm nổi Bật", press: () {}),
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
