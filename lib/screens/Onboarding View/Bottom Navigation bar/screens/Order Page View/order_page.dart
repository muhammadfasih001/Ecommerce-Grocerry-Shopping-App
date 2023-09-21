import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home%20page%20widget/home_page_product_data.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home_page_view.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Track%20Order%20View/track_order_view.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Product%20detail%20Page%20View/Product%20Widget/product_detail_button_2.dart';

class OrderPageView extends StatefulWidget {
  final List orderList;
  const OrderPageView({super.key, required this.orderList});

  @override
  State<OrderPageView> createState() => _OrderPageViewState();
}

class _OrderPageViewState extends State<OrderPageView> {
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
      appBar: AppBar(
        titleSpacing: 36,
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: CircleAvatar(
            backgroundColor: AppDarkColors.black10,
            child: InkWell(
              onTap: () {
                /*Code*/
              },
              child: const Icon(
                Icons.keyboard_arrow_left,
              ),
            ),
          ),
        ),
        title: Text(
          "Orders",
          style: CustomTextStyle18.h1Regular18,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: orderItem.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.transparent,
                            child: Image.network(
                                "${widget.orderList[index]["images"]}"),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "${widget.orderList[index]["description"]}",
                                  style: CustomTextStyle16.h1SemiBold16,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${widget.orderList[index]["price"]}",
                                style: CustomTextStyle16.h1SemiBold16,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, right: 10),
                            child: Text(
                              "${homePageProductData[index]["id"]}",
                              style: CustomTextStyle16.h1SemiBold16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 185,
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: CircleAvatar(
                                    radius: 80,
                                    backgroundColor: Colors.transparent,
                                    child: Image.asset(
                                      "assets/images/Delivery.gif",
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 45,
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xffD4D4D4),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                      style: BorderStyle.solid,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 10,
                                        blurRadius: 10,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.place,
                                    color: AppColors.blue,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20,
                              top: 20,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Your ${widget.orderList[index]["description"]}",
                                  style: CustomTextStyle20.h1Regular20,
                                ),
                                Text(
                                  "are on the way",
                                  style: CustomTextStyle20.h1SemiBold20,
                                ),
                                ProductDetailCustomButton2(
                                  text: "Track Order",
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TrackOrderView()));
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 5),
                        child: Text(
                          "Meet our Rider: ${homePageProductData[index]["ridername"]}",
                          style: CustomTextFieldStyle.h1Medium14,
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          height: 60,
                          thickness: 1.0,
                        ),
                      ),
                    ],
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
