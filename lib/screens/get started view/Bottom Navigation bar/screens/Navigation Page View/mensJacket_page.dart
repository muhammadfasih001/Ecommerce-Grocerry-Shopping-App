import 'package:flutter/material.dart';

class MensJacketPage extends StatefulWidget {
  const MensJacketPage({super.key});

  @override
  State<MensJacketPage> createState() => _MensJacketPageState();
}

class _MensJacketPageState extends State<MensJacketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mens Jacket page"),
      ),
    );
  }
}
