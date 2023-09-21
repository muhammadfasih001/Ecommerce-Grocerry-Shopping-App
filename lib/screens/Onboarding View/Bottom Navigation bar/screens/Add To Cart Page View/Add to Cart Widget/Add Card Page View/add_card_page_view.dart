import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/Checkout%20Page%20View/checkout%20page%20widget/myCustomAppBar_allUse.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/Payment%20Page%20View/payment_page_view.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/myCustomButton_allUse.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home_page_view.dart';

class AddCardPageVIew extends StatefulWidget {
  final List item;
  const AddCardPageVIew({super.key, required this.item});

  @override
  State<AddCardPageVIew> createState() => _AddCardPageVIewState();
}

class _AddCardPageVIewState extends State<AddCardPageVIew> {
  double parsePrice(String price) {
    return double.parse(price.replaceAll('\$', ''));
  }

  double calculateSubTotal() {
    double subtotal = 0.00;
    for (final cartItem in widget.item) {
      double itemPrice = parsePrice(cartItem["price"]);
      int quantity = int.parse(cartItem["quantity"]);
      subtotal += itemPrice * quantity;
    }
    return subtotal;
  }

  double calculateTotal() {
    double subtotal = calculateSubTotal();
    double deliveryCharges =
        20.0; // Change this to your actual delivery charges
    return subtotal + deliveryCharges;
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black1));
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black1));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBarAllUse(appBarText: "Add Card"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Text(
                "CARD HOLDER NAME",
                style: CustomTextStyle16.h1SemiBold16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                style: CustomTextStyle18.h1SemiBold18,
                decoration: InputDecoration(
                  hintText: "Enter you'r name",
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppDarkColors.black45),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Text(
                "CARD NUMBER",
                style: CustomTextStyle16.h1SemiBold16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                style: CustomTextStyle18.h1SemiBold18,
                decoration: InputDecoration(
                  hintText: "Enter you'r card number",
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppDarkColors.black45),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 30,
                  ),
                  child: Text(
                    "EXP DATE",
                    style: CustomTextStyle16.h1SemiBold16,
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 30,
                    right: 30,
                  ),
                  child: Text(
                    "CVC",
                    style: CustomTextStyle16.h1SemiBold16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      style: CustomTextStyle18.h1SemiBold18,
                      decoration: InputDecoration(
                        hintText: "Exp Date",
                        hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppDarkColors.black45),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, left: 16),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: CustomTextStyle18.h1SemiBold18,
                      decoration: InputDecoration(
                        hintText: "CVC Number",
                        hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppDarkColors.black45),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            BottomSheet(
              enableDrag: false,
              onClosing: () {},
              builder: (context) {
                double subtotal = calculateSubTotal();
                double deliveryCharges = calculateTotal() - calculateSubTotal();
                double total = calculateTotal();

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 230,
                    decoration: BoxDecoration(
                      color: AppDarkColors.black10,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Subtotal",
                                  style: CustomTextStyle14.h1SemiBold14,
                                ),
                                Text(
                                  '\$$subtotal',
                                  style: CustomTextStyle16.h1Medium16,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivery charges",
                                  style: CustomTextStyle14.h1SemiBold14,
                                ),
                                Text(
                                  '\$$deliveryCharges',
                                  style: CustomTextStyle16.h1Medium16,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: CustomTextStyle14.h1SemiBold14,
                                ),
                                Text(
                                  '\$$total',
                                  style: CustomTextStyle16.h1Medium16,
                                ),
                              ],
                            ),
                          ),
                          MyCustomButtonAllUse(
                            text: "Make Payment",
                            backgroundColor: AppColors.blueDark,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PaymentPageView()),
                              ).then(
                                (value) => Navigator.of(context)
                                    .popUntil((route) => route.isFirst),
                              );
                              setState(() {
                                orderItem.addAll(cartItems);
                                cartItems.clear();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
