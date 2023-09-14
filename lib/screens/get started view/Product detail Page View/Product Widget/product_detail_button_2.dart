import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';

class ProductDetailCustomButton2 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const ProductDetailCustomButton2(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 60,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.blueDark,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppDarkColors.black10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
