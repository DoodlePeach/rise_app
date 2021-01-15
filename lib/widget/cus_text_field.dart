import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CusTextField extends StatelessWidget {
  bool obscureText = false;
  String labelText;
  IconData suffixIcon;
  String hintText;
  bool showIcon = false;
  TextEditingController controller;
  CusTextField(
      {@required this.showIcon,
      @required this.hintText,
      this.controller,
      this.labelText,
      this.obscureText,
      this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.pinkAccent,
              width: 1.0,
            ),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
          suffixIcon: Icon(
           showIcon==true?suffixIcon:null
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.pinkAccent,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
