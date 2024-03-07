import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/textstyle.dart';

class CustomTextField extends StatelessWidget {

  final String placeHolder;
  final int textTimit;
  final bool isPassword;

  const CustomTextField({super.key, required this.placeHolder, required this.textTimit, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: placeHolder,
        labelStyle: textInputFieldDecoration,
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 3.0),
        ),
      ),
      cursorColor: Colors.black,
      inputFormatters: [LengthLimitingTextInputFormatter(textTimit)],
    );
  }
}
