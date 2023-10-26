// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, required this.textButton});
  String textButton;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue,
        ),
      ),
    );
  }
}
