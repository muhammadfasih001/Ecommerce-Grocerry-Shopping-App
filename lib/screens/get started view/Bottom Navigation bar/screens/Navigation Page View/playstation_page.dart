import 'package:flutter/material.dart';

class PlaystationPage extends StatefulWidget {
  const PlaystationPage({super.key});

  @override
  State<PlaystationPage> createState() => _PlaystationPageState();
}

class _PlaystationPageState extends State<PlaystationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("playstation page"),
      ),
    );
  }
}
