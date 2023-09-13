import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartPage extends StatefulWidget {
  final List item;
  const AddToCartPage({super.key, required this.item});

  @override
  State<AddToCartPage> createState() => _AddToCartPageState();
}

class _AddToCartPageState extends State<AddToCartPage> {
//increase quanitity
  increaseQuantity(int index) {
    setState(() {
      int currentQuantity = int.parse(widget.item[index]["quantity"]);
      widget.item[index]["quantity"] = (currentQuantity + 1).toString();
    });
  }

  //decrease Quantity
  decreaseQuantity(int index) {
    setState(() {
      int currentQuantity = int.parse(widget.item[index]["quantity"]);
      if (currentQuantity > 1) {
        widget.item[index]["quantity"] = (currentQuantity - 1).toString();
      }
    });
  }

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
        SystemUiOverlayStyle(statusBarColor: AppColors.orangeLite));
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.blue));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 240,
                    width: double.infinity,
                    color: AppColors.orangeLite,
                  ),
                  Positioned(
                    bottom: 60,
                    child: Image.asset(
                      "assets/images/#.png",
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 250,
                    child: Image.asset("assets/images/Vector.png"),
                  ),
                  Positioned(
                    top: 135,
                    left: 115,
                    child: Image.asset("assets/images/25.png"),
                  ),
                  Positioned(
                    left: 298,
                    top: 118,
                    child: Text(
                      "OFF!!",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: AppDarkColors.black1,
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 25),
                        child: Text(
                          "Shopping Cart",
                          style: CustomTextStyle16.h1Medium16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.orange,
                ),
                child: Center(
                  child: Text(
                    "Use code #HalalFood at Checkouut",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              widget.item.isEmpty
                  ? Center(
                      child: Image.asset(
                        "assets/images/empty.png",
                        height: 380,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.all(12),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: widget.item.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 25,
                              child: Image.network(
                                  "${widget.item[index]["images"]}"),
                            ),
                            title: Text("${widget.item[index]["description"]}",
                                style: CustomTextStyle14.h1Medium14),
                            subtitle: Text(
                              "${widget.item[index]["price"]}",
                              style: CustomTextStyle14.h1Regular14,
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    decreaseQuantity(index);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: AppDarkColors.black10,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child:
                                      Text("${widget.item[index]["quantity"]}"),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    increaseQuantity(index);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: AppDarkColors.black10,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
              BottomSheet(
                enableDrag: false,
                onClosing: () {},
                builder: (context) {
                  double subtotal = calculateSubTotal();
                  double deliveryCharges =
                      calculateTotal() - calculateSubTotal();
                  double total = calculateTotal();

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      height: 195,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Subtotal",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\$$subtotal',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Delivery charges",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\$$deliveryCharges',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '\$$total',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
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
      ),
    );
  }
}
