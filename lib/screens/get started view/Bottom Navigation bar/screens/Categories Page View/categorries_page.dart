import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';

class CategorriesPageView extends StatefulWidget {
  const CategorriesPageView({super.key});

  @override
  State<CategorriesPageView> createState() => _CategorriesPageViewState();
}

class _CategorriesPageViewState extends State<CategorriesPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDarkColors.black1,
      appBar: AppBar(
        title: Text("Categorries Page"),
      ),
    );
  }
}
