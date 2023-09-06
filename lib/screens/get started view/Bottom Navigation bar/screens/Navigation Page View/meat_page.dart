import 'package:flutter/material.dart';

class MeatPage extends StatefulWidget {
  const MeatPage({super.key});

  @override
  State<MeatPage> createState() => _MeatPageState();
}

class _MeatPageState extends State<MeatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meat page"),
      ),
    );
  }
}
