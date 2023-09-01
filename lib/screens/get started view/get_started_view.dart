import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/grocerryHomePage/grocerry_home_page.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/widget/customButton1.dart';

class GetStartedView extends StatefulWidget {
  const GetStartedView({super.key});

  @override
  State<GetStartedView> createState() => _GetStartedViewState();
}

class _GetStartedViewState extends State<GetStartedView> {
  int activePage = 0;

  final PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 33, bottom: 30),
          child: Column(
            children: [
              Container(
                // color: Colors.red,
                child: SizedBox(
                  height: height * 0.35,
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (int index) {
                      setState(
                        () {
                          activePage = index;
                        },
                      );
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 42, right: 35),
                        child: Container(
                          // color: Colors.amber,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your holiday\nshopping\ndelivered to Screen",
                                style: CustomTextStyle30.h1Bold30,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "One",
                                    style: CustomTextStyle30.h1Bold30,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Image.asset("assets/images/emoji.png"),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
                                style: CustomTextStyle18.h1Medium18,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 42, right: 35),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your holiday\nshopping\ndelivered to Screen",
                                style: CustomTextStyle30.h1Bold30,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Two",
                                    style: CustomTextStyle30.h1Bold30,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Image.asset("assets/images/emoji.png"),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "There's something for everyone to enjoy with Sweet Shop Favourites Screen 2",
                                style: CustomTextStyle18.h1Medium18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 42, right: 35),
                child: Row(
                  children: List.generate(
                    2,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Container(
                        height: activePage == index ? 6 : 4,
                        width: activePage == index ? 45 : 25,
                        decoration: BoxDecoration(
                          color: activePage == index
                              ? AppDarkColors.black1
                              : AppDarkColors.black45,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    // color: Colors.amber,
                  ),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 270,
                    width: 270,
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                height: height * 0.08,
                width: width * 0.75,
                child: CustomButton1(
                  text: "Get Started",
                  backgroundColor: AppDarkColors.black1,
                  textColor: AppDarkColors.black100,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GrocerryHomeScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
