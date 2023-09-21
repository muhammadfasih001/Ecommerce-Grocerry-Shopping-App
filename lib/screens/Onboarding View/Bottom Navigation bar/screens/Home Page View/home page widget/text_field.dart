import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';

class CustomTextFiled1 extends StatelessWidget {
  const CustomTextFiled1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.textFieldColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 5),
        child: TextField(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search Product or store",
            hintStyle: TextStyle(
              color: AppDarkColors.black20,
              fontSize: 15,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 26,
            ),
          ),
        ),
      ),
    );
  }
}
