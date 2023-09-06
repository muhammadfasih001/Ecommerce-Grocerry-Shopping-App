import 'package:flutter/material.dart';

class NikeShoePage extends StatefulWidget {
  const NikeShoePage({super.key});

  @override
  State<NikeShoePage> createState() => _NikeShoePageState();
}

class _NikeShoePageState extends State<NikeShoePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nike page"),
      ),
    );
  }
}
