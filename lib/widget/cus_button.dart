import 'package:flutter/material.dart';
import 'package:rise_app/widget/cus_gradient.dart';

class CusButton extends StatelessWidget {
  final double widgth;
  final double height;
  final String textButton;
  final Function whenPressed;
  CusButton({this.height, this.textButton, this.whenPressed, this.widgth});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: height,
      width: widgth,
      child: RaisedButton(
        shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15)),
        textColor: Colors.white,
        padding: EdgeInsets.all(0.0),
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: gradient,
          ),
          child: Center(
            child: Text(
              textButton,
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        onPressed: whenPressed,
      ),
    );
  }
}
