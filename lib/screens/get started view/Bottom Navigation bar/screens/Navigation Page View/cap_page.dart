import 'package:flutter/material.dart';

class CapPage extends StatefulWidget {
  const CapPage({super.key});

  @override
  State<CapPage> createState() => _CapPageState();
}

class _CapPageState extends State<CapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cap page"),
      ),
    );
  }
}
