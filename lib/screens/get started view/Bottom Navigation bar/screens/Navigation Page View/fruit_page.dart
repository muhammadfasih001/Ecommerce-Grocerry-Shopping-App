import 'package:flutter/material.dart';

class FruitPage extends StatefulWidget {
  const FruitPage({super.key});

  @override
  State<FruitPage> createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fruit page"),
      ),
    );
  }
}
