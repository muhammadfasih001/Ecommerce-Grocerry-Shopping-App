import 'package:flutter/material.dart';

class CookingOilPage extends StatefulWidget {
  const CookingOilPage({super.key});

  @override
  State<CookingOilPage> createState() => _CookingOilPageState();
}

class _CookingOilPageState extends State<CookingOilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cooking oil page"),
      ),
    );
  }
}
