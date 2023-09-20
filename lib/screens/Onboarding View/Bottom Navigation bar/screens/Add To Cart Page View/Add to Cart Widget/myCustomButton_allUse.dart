import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';

class MyCustomButtonAllUse extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const MyCustomButtonAllUse(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 65,
        width: 330,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:
              BorderRadius.circular(20.0), // Customize the button's shape
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 17,
              color: AppDarkColors.black10,
            ),
          ),
        ),
      ),
    );
  }
}
