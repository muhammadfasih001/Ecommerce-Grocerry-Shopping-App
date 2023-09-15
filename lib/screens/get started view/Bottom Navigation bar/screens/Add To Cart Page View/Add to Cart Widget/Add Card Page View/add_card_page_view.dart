import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/Checkout%20Page%20View/checkout%20page%20widget/myCustomAppBar_allUse.dart';

class AddCardPageVIew extends StatefulWidget {
  const AddCardPageVIew({super.key});

  @override
  State<AddCardPageVIew> createState() => _AddCardPageVIewState();
}

class _AddCardPageVIewState extends State<AddCardPageVIew> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black1));
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black1));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBarAllUse(appBarText: "Add Card"),
    );
  }
}
