import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Color? buttonColor;
  final String? lable;
  final Color? textColor;
  const MainButton({super.key, this.buttonColor, this.lable, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: MediaQuery.of(context).size.width - 60,
      //padding: EdgeInsets.symmetric(vertical: 14,),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor ?? Colors.white),
      child: Center(
        child: Text(
          lable ?? 'Get Started',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: textColor ?? Colors.black),
        ),
      ),
    );
  }
}
