import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/Add%20Card%20Page%20View/add_card_page_view.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/Checkout%20Page%20View/checkout%20page%20widget/Custom_container_TextFiled.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/Checkout%20Page%20View/checkout%20page%20widget/myCustomAppBar_allUse.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/myCustomButton_allUse.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home_page_view.dart';

class CheckoutPageView extends StatefulWidget {
  const CheckoutPageView({super.key});

  @override
  State<CheckoutPageView> createState() => _CheckoutPageViewState();
}

class _CheckoutPageViewState extends State<CheckoutPageView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black1));
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.orangeLite));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDarkColors.black1,
      appBar: MyCustomAppBarAllUse(
        appBarText: "Checkout",
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              child: Text(
                "Delivery Address",
                style: CustomTextStyle16.h1Regular16,
              ),
            ),
            CustomContainerTextFeild(
              borderColor: AppColors.orange,
              addressText: "Home",
              hintText: "Enter you'r Home Address",
            ),
            const SizedBox(
              height: 30,
            ),
            CustomContainerTextFeild(
              borderColor: AppDarkColors.black45,
              addressText: "Office",
              hintText: "Enter you'r Office Address",
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: AppColors.orange,
                      width: 2,
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: AppColors.orange,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Add New Address",
                  style: CustomTextStyle18.h1Regular18,
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: MyCustomButtonAllUse(
                text: "Add Card",
                backgroundColor: AppColors.blueDark,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AddCardPageVIew(item: cartItems)));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
