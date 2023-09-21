import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class MensJacketPage extends StatefulWidget {
  const MensJacketPage({super.key});

  @override
  State<MensJacketPage> createState() => _MensJacketPageState();
}

class _MensJacketPageState extends State<MensJacketPage> {
  final List<Map<String, dynamic>> mensJacketPageGridItems = [
    {
      "description": "Ski Jacket",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/634-6349450_spectrum-jacket-men-resort-helly-hansen-official-helly.png",
    },
    {
      "description": "Men's Hoodie",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/991-9916421_hooded-jacket-men-png-image-mens-black-jacket.png",
    },
    {
      "description": "The Stellar Shell Jacket",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/49-490870_the-stellar-shell-jacket-north-face-down-jacket.png",
    },
    {
      "description": " Mens Millerton Jacket",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/516-5168930_the-north-face-mens-millerton-jacket-1-north.png",
    },
    {
      "description": "Leather Black",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/974-9744245_jari-black-front-aigner-leather-jacket-men.png",
    },
    {
      "description": "Denim Jacket",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/829-8297532_2018-jeans-jackets-men-winter-warm-bomber-jacket.png",
    },
    {
      "description": "Men's Air Jacket",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/363-3633610_men-jacket-download-png-image-lodenjacke-jagd.png",
    },
    {
      "description": "Herren Jacket Winter",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/939-9398354_mens-autumn-winter-warm-casual-zipper-long-sleeve.png",
    },
    {
      "description": "Men's Houston Jacket",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/616-6166971_mens-houston-rockets-nike-lunar-new-year-edition.png",
    },
    {
      "description": "Classic Zip Jacket",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/158-1588022_classic-zip-front-jacket-made-from-a-soft.png",
    },
    {
      "description": "Angler Jacket",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/307-3073352_bass-pro-shops-angler-jacket-for-men-bass.png",
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
      appBar: MyAppBar(appBarText: "Men's Jackets"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: mensJacketPageGridItems.length,
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
                        "${mensJacketPageGridItems.elementAt(index)["images"]}",
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
                        "${mensJacketPageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${mensJacketPageGridItems.elementAt(index)["description"]}",
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
