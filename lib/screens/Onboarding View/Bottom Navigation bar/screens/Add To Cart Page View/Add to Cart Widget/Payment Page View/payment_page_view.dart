import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPageView extends StatefulWidget {
  const PaymentPageView({super.key});

  @override
  State<PaymentPageView> createState() => _PaymentPageViewState();
}

class _PaymentPageViewState extends State<PaymentPageView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black1));
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.blue));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDarkColors.black1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/payment.gif",
            width: 380,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Your payment was",
              style: GoogleFonts.manrope(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Successfully",
            style: GoogleFonts.manrope(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
