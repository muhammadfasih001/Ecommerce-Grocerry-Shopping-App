import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class FruitPage extends StatefulWidget {
  const FruitPage({super.key});

  @override
  State<FruitPage> createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitPage> {
  final List<Map<String, dynamic>> fruitPageGridItems = [
    {
      "description": "Red Apples",
      "price": "\$325",
      "images": "https://www.nicepng.com/png/full/50-501969_apple.png",
    },
    {
      "description": "Papaya",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/7-71324_papaya-clipart-different-fruit-papaya-png.png",
    },
    {
      "description": "Peach",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/101-1014885_best-free-peach-transparent-png-file-sliced-peaches.png",
    },
    {
      "description": "Pineapples",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/90-901053_the-pineapple-is-a-tropical-plant-with-an.png",
    },
    {
      "description": "Water melon",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/402-4027187_watermelon-watermelon-png.png",
    },
    {
      "description": "Pomegranate",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/9-95533_pomegranate-clipart-anaar-cute-borders-pomegranate-png.png",
    },
    {
      "description": "Rambutan",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/419-4193342_thumb-image-exotic-fruit-rambutan.png",
    },
    {
      "description": "Strawberries",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/105-1053418_strawberries-vitamin-c-foods-strawberry.png",
    },
    {
      "description": "Appricot",
      "price": "\$12",
      "images": "https://www.nicepng.com/png/full/63-636714_apricot-png.png",
    },
    {
      "description": "Rasberries",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/109-1091157_raspberry-transparent-png-sticker-raspberry-png-transparent.png",
    },
    {
      "description": "Banana",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/11-117762_free-png-banana-png-images-transparent-banana-png.png",
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
      appBar: MyAppBar(appBarText: "Fruits"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: fruitPageGridItems.length,
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
                        "${fruitPageGridItems.elementAt(index)["images"]}",
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
                        "${fruitPageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${fruitPageGridItems.elementAt(index)["description"]}",
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
