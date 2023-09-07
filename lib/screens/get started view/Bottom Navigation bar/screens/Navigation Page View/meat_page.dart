import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class MeatPage extends StatefulWidget {
  const MeatPage({super.key});

  @override
  State<MeatPage> createState() => _MeatPageState();
}

class _MeatPageState extends State<MeatPage> {
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
      appBar: MyAppBar(appBarText: "Meats"),
    );
  }
}
