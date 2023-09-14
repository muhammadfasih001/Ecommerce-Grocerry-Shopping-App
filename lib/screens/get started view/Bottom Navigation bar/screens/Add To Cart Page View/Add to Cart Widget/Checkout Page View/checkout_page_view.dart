import 'package:flutter/material.dart';

class CheckoutPageView extends StatefulWidget {
  const CheckoutPageView({super.key});

  @override
  State<CheckoutPageView> createState() => _CheckoutPageViewState();
}

class _CheckoutPageViewState extends State<CheckoutPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout Page"),
      ),
    );
  }
}
