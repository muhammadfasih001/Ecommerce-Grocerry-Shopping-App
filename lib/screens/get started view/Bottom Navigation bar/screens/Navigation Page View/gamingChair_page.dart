import 'package:flutter/material.dart';

class gamingChairPage extends StatefulWidget {
  const gamingChairPage({super.key});

  @override
  State<gamingChairPage> createState() => _gamingChairPageState();
}

class _gamingChairPageState extends State<gamingChairPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gaming Chair page"),
      ),
    );
  }
}
