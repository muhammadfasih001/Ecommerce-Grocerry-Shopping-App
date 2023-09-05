import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';

class MorePageView extends StatefulWidget {
  const MorePageView({super.key});

  @override
  State<MorePageView> createState() => _MorePageViewState();
}

class _MorePageViewState extends State<MorePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDarkColors.black1,
      appBar: AppBar(
        title: Text("More page"),
      ),
    );
  }
}
