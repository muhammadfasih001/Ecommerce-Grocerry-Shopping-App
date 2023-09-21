import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class CookingOilPage extends StatefulWidget {
  const CookingOilPage({super.key});

  @override
  State<CookingOilPage> createState() => _CookingOilPageState();
}

class _CookingOilPageState extends State<CookingOilPage> {
  final List<Map<String, dynamic>> cookingOilPageGridItems = [
    {
      "description": "Canola Oil",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/907-9073403_gandour-canola-oil-plastic-bottle.png",
    },
    {
      "description": "Seed Peenut Oil ",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/252-2528189_groundnut-seed-oil-peanut-oil.png",
    },
    {
      "description": "Sunflower Oil",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/366-3664725_sufi-sunflower-cooking-oil-bottle-3-ltr-simply.png",
    },
    {
      "description": "Coconut Oil",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/273-2737892_virgin-coconut-oil-in-glass-jar-organic-nutritional.png",
    },
    {
      "description": "Lime Oil",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/409-4097836_persian-lime-olive-oil-olive-oil-trio.png",
    },
    {
      "description": "Olive Oil",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/175-1751150_the-better-olive-oil-12-omega-foods-olive.png",
    },
    {
      "description": "Banaspati Oil",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/465-4656605_4th-heart-ghee-hybrid-mct-cooking-oil.png",
    },
    {
      "description": "Vegetable Oil",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/366-3665343_wesson-vegetable-oil.png",
    },
    {
      "description": "Walnut Oil",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/366-3665857_walnut-oil-walnut-oil-olive.png",
    },
    {
      "description": "Canolive Cooking Oil",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/366-3665290_canolive-cooking-oil-bottle-bottle.png",
    },
    {
      "description": "Areej Premium Oil",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/366-3664776_bottle-of-cooking-oil-png.png",
    },
  ];
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
      appBar: MyAppBar(appBarText: "Cooking Oil"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: cookingOilPageGridItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            mainAxisExtent: 252,
          ),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppDarkColors.black10,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Image.network(
                        "${cookingOilPageGridItems.elementAt(index)["images"]}",
                        width: double.infinity,
                        height: 160,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14, right: 14),
                      child: Divider(
                        color: AppColors.blue,
                        thickness: 0.1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${cookingOilPageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${cookingOilPageGridItems.elementAt(index)["description"]}",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppDarkColors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 15,
                  top: 166,
                  child: InkWell(
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: AppColors.blue,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
