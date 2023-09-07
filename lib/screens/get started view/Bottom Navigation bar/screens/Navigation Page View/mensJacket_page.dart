import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class MensJacketPage extends StatefulWidget {
  const MensJacketPage({super.key});

  @override
  State<MensJacketPage> createState() => _MensJacketPageState();
}

class _MensJacketPageState extends State<MensJacketPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black1));
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.blue));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBarText: "Men's Jackets"),
    );
  }
}
