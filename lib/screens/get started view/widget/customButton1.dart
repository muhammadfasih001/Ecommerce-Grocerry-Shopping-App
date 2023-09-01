import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';

class CustomButton1 extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomButton1(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:
              BorderRadius.circular(20.0), // Customize the button's shape
        ),
        padding: EdgeInsets.all(16.0), // Customize the button's padding
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: CustomTextStyle18.h1SemiBold18,
            ),
            const Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
