import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';

class CustomRowUsdHrs extends StatelessWidget {
  final String digitText;
  final String usdHrsText;
  final String description;
  final Color backgroundColor;

  const CustomRowUsdHrs(
      {super.key,
      required this.digitText,
      required this.usdHrsText,
      this.backgroundColor = Colors.white,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: backgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                digitText,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                usdHrsText,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: CustomTextStyle14.h1Medium14,
          ),
        ],
      ),
    );
  }
}
