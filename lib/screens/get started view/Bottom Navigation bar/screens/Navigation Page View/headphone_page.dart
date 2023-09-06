import 'package:flutter/material.dart';

class HeadphonePage extends StatefulWidget {
  const HeadphonePage({super.key});

  @override
  State<HeadphonePage> createState() => _HeadphonePageState();
}

class _HeadphonePageState extends State<HeadphonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Headphone page"),
      ),
    );
  }
}
