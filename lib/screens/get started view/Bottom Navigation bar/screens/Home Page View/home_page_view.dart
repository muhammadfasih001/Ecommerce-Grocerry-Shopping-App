import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home%20page%20widget/custom_row.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home%20page%20widget/home_page_grid_item.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home%20page%20widget/text_field.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: AppColors.blue),
    );
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
                  onPressed: () {},
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
                ),
              )
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
            const HomePageGridItem(),
          ],
        ),
      ),
    );
  }
}
