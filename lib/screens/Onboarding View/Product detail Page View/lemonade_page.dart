import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Product%20detail%20Page%20View/Product%20Widget/product_detail_button_1.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Product%20detail%20Page%20View/Product%20Widget/product_detail_button_2.dart';
import 'package:animated_rating_stars/animated_rating_stars.dart';

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
      appBar: MyAppBar(appBarText: "Lemonade"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.red,
              child: SizedBox(
                height: 160,
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
                                const SizedBox(
                                  width: 65,
                                ),
                                Image.asset(
                                  "assets/images/lemon2.png",
                                  width: 180,
                                ),
                              ],
                            ),
                            const SizedBox(
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
                                const SizedBox(
                                  width: 75,
                                ),
                                Image.asset(
                                  "assets/images/lemon1.png",
                                  width: 150,
                                ),
                              ],
                            ),
                            const SizedBox(
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
                                const SizedBox(
                                  width: 55,
                                ),
                                Image.asset(
                                  "assets/images/lemon3.png",
                                  width: 180,
                                ),
                              ],
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
              onClosing: () {
                /*Code*/
              },
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Container(
                    height: 477,
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
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
                                color: AppColors.blueDark,
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
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 10),
                              child: AnimatedRatingStars(
                                initialRating: 3.5,
                                minRating: 0.0,
                                maxRating: 5.0,
                                filledColor: Colors.amber,
                                emptyColor: Colors.grey,
                                filledIcon: Icons.star,
                                halfFilledIcon: Icons.star_half,
                                emptyIcon: Icons.star_border,
                                onChanged: (double rating) {
                                  /*Code here*/
                                },
                                displayRatingValue: true,
                                interactiveTooltips: true,
                                customFilledIcon: Icons.star,
                                customHalfFilledIcon: Icons.star_half,
                                customEmptyIcon: Icons.star_border,
                                starSize: 15.0,
                                animationDuration: Duration(milliseconds: 300),
                                animationCurve: Curves.easeInOut,
                                readOnly: false,
                              ),
                            ),
                            Text(
                              "110 Reviews",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppDarkColors.black20,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Details",
                                style: CustomTextStyle18.h1SemiBold18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              child: Text(
                                "A lemon is a yellow citrus fruit. It is related to the orange. Lemon juice is about 5% citric acid, and has a pH of 2 to 3. Lemon plants vary in size yet stay generally small.",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppDarkColors.black60,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              child: Text(
                                "Nutrition facts",
                                style: CustomTextStyle18.h1SemiBold18,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                              color: AppDarkColors.black45,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              child: Text(
                                "Reviews",
                                style: CustomTextStyle18.h1SemiBold18,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                              color: AppDarkColors.black45,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProductDetailCustomButton1(
                              text: "Add To Cart",
                              onPressed: () {
                                /*Code*/
                              },
                            ),
                            ProductDetailCustomButton2(
                              text: "Buy Now",
                              onPressed: () {
                                /*Code*/
                              },
                            ),
                          ],
                        )
                      ],
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
