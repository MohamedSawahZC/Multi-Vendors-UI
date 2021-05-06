import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    this.height,
    this.width,
    this.title,
    this.fontSize,
    this.textColor,
    this.buttonColor,
    this.onPressed,
  });
  final double height, width, fontSize;
  final String title;
  final Color textColor, buttonColor;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: RaisedButton(
        elevation: 5,
        onPressed: onPressed,
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
