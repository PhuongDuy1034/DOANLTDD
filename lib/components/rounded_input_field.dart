import 'package:flutter/material.dart';
import 'package:doanltdd/components/text_field_container.dart';
import 'package:doanltdd/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final IconData icon1;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.icon1,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: Icon(
            icon1,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
