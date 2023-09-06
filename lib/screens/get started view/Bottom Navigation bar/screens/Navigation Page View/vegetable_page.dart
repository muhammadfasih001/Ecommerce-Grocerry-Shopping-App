import 'package:flutter/material.dart';

class vegetablePage extends StatefulWidget {
  const vegetablePage({super.key});

  @override
  State<vegetablePage> createState() => _vegetablePageState();
}

class _vegetablePageState extends State<vegetablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vegetable page"),
      ),
    );
  }
}
