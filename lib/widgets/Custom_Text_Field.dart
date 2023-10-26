// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.onChanged,
      this.hintText,
      this.obsecuretext = false,
      this.inputType});
  String? hintText;
  Function(String)? onChanged;
  bool? obsecuretext;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecuretext!,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
