import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

const double kToolbarHeight = 80;

class LemonadePage extends StatefulWidget implements PreferredSizeWidget {
  const LemonadePage({
    super.key,
  });

  @override
  State<LemonadePage> createState() => _LemonadePageState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _LemonadePageState extends State<LemonadePage> {
  int activePage = 0;
  final PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black10));
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
      // backgroundColor: Colors.blueAccent,
      appBar: MyAppBar(appBarText: "Lemonade"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // color: Colors.red,
            child: SizedBox(
              height: 200,
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
                          Row(
                            children: [
                              SizedBox(
                                width: 35,
                              ),
                              Image.asset(
                                "assets/images/lemon2.png",
                                width: 230,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
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
                          Row(
                            children: [
                              SizedBox(
                                width: 65,
                              ),
                              Image.asset(
                                "assets/images/lemon1.png",
                                width: 180,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
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
                          Row(
                            children: [
                              SizedBox(
                                width: 35,
                              ),
                              Image.asset(
                                "assets/images/lemon3.png",
                                width: 230,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
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
            padding: const EdgeInsets.symmetric(horizontal: 140),
            child: Row(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Container(
                    height: activePage == index ? 6 : 4,
                    width: activePage == index ? 45 : 25,
                    decoration: BoxDecoration(
                      color: activePage == index
                          ? AppColors.orangeLite
                          : AppDarkColors.black20,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
          ),
          BottomSheet(
            enableDrag: false,
            onClosing: () {},
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppDarkColors.black10,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Text(
                          "Thin Choice Top\nLemonade",
                          style: CustomTextStyle20.h1SemiBold20,
                        ),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "\$34.70/KG",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.blue,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "\$22.04 OFF",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppDarkColors.black1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 19,
                          ),
                          Text(
                            "Reg: \$56.70 USD",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppDarkColors.black20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          //
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
