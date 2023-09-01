import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';

class GrocerryHomeScreen extends StatefulWidget {
  const GrocerryHomeScreen({super.key});

  @override
  State<GrocerryHomeScreen> createState() => _GrocerryHomeScreenState();
}

class _GrocerryHomeScreenState extends State<GrocerryHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDarkColors.black1,
    );
  }
}
