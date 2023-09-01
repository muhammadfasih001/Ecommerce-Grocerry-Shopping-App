import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/get_started_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedView(),
    );
  }
}
