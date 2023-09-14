import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

const double kToolbarHeight = 80;

class LiptonTeaPage extends StatefulWidget implements PreferredSizeWidget {
  const LiptonTeaPage({super.key});

  @override
  State<LiptonTeaPage> createState() => _LiptonTeaPageState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _LiptonTeaPageState extends State<LiptonTeaPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black10));
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
      appBar: MyAppBar(appBarText: "Lipton Tea"),
    );
  }
}
