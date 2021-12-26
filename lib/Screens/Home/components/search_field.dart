import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'package:doanltdd/sizeconfig.dart';
import 'package:doanltdd/constants.dart';
import 'package:flutter_svg/svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Color(0xFFE3F2FD),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: (50), vertical: (15)),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: "Search product",
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFF03A9F4),
          ),
        ),
      ),
    );
  }
}
