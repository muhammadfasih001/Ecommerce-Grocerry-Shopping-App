import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/add_to_cart_page.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home%20page%20widget/custom_row.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home%20page%20widget/home_page_grid_item.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home%20page%20widget/home_page_product_data.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home%20page%20widget/text_field.dart';

/*Global Cart Item List*/
List cartItems = [];
List favItems = [];

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.blue));
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
        toolbarHeight: 80,
        backgroundColor: AppColors.blue,
        elevation: 0,
        title: Text(
          "Hey, Fasih",
          style: CustomTextStyle22.h1SemiBold22,
        ),
        actions: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: IconButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddToCartPage(
                          item: cartItems,
                        ),
                      ),
                    );
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 28,
                  ),
                ),
              ),
              Positioned(
                right: 6,
                top: 20,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                  ),
                  child: Center(
                    //appbar
                    child: Text(
                      cartItems.length.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blue,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 22, right: 22),
                    child: CustomTextFiled1(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 16, right: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "DELIVERY TO",
                          style: TextStyle(
                            color: AppDarkColors.black45,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "WITHIN",
                          style: TextStyle(
                            color: AppDarkColors.black45,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, left: 16, right: 10),
                    child: Row(
                      children: [
                        Text(
                          "Green Way 3000, Sylhet",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              "1 Hour",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomRowUsdHrs(
                      digitText: "346",
                      usdHrsText: "USD",
                      description: "Your total savings",
                      backgroundColor: AppColors.orangeLite,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CustomRowUsdHrs(
                      digitText: "215",
                      usdHrsText: "HRS",
                      description: "Your time saved",
                      backgroundColor: AppDarkColors.black20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CustomRowUsdHrs(
                      digitText: "400",
                      usdHrsText: "USD",
                      description: "Your total savings",
                      backgroundColor: AppColors.orangeLite,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CustomRowUsdHrs(
                      digitText: "250",
                      usdHrsText: "HRS",
                      description: "Your time saved",
                      backgroundColor: AppDarkColors.black20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Recomended",
                style: CustomTextStyle30.h1Regular30,
              ),
            ),
            HomePageGridItem(
              addToCartCallBack: (index) {
                setState(
                  () {
                    cartItems.add(homePageProductData[index]);
                  },
                );
              },
              addToFavCallBack: (index) {
                setState(
                  () {
                    if (homePageProductData[index]["isFav"] == true) {
                      // If it's already a favorite, remove it from favorites
                      homePageProductData[index]["isFav"] = false;
                      favItems.remove(homePageProductData[index]);
                    } else {
                      // If it's not a favorite, add it to favorites
                      homePageProductData[index]["isFav"] = true;
                      favItems.add(homePageProductData[index]);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
