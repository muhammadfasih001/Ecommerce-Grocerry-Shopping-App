import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class NikeShoePage extends StatefulWidget {
  const NikeShoePage({super.key});

  @override
  State<NikeShoePage> createState() => _NikeShoePageState();
}

class _NikeShoePageState extends State<NikeShoePage> {
  final List<Map<String, dynamic>> nikeShoePageGridItems = [
    {
      "description": "Nike Air Force 1",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/827-8276248_penn-state-shoes-nike-penn-state-shoes-2018.png",
    },
    {
      "description": "Nike Dunk",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/507-5079644_nike-w-blazer-mid-rebel-nike-blazer-mid.png",
    },
    {
      "description": "Nike Lebron 10",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/225-2251950_nike-lebron-10-11-shoes-atomic-teal-541100.png",
    },
    {
      "description": "Nike Limited Edition",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/492-4929733_nike-limited-edition-shoes-2018.png",
    },
    {
      "description": "Cheap Nike Black",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/890-8900284_cheap-nike-basketball-shoes-australia.png",
    },
    {
      "description": "Nike Flytrap",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/133-1338841_kyrie-flytrap-png-kyrie-fly-trap-nike-mens.pnghttps://www.nicepng.com/png/full/133-1338841_kyrie-flytrap-png-kyrie-fly-trap-nike-mens.png",
    },
    {
      "description": "Nike Boots",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/20-207880_picture-id-big-kids-basketball-for-pinterest-nike.png",
    },
    {
      "description": "Nike Air Max 1",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/794-7944775_nike-air-max-1-essential-running-shoes-sneakers.png",
    },
    {
      "description": "Nike Bullet 95",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/380-3804125_air-max-95-qs-silver-bullet-nike-air.png",
    },
    {
      "description": "Nike Basketball",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/818-8182801_over-3-800-kyrie-listings-available-nike-basketball.png",
    },
    {
      "description": "Nike White Space",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/371-3711769_air-jordan-11-retro-low-premium-heiress-collection.png",
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
      appBar: MyAppBar(appBarText: "Nike Shoes"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: nikeShoePageGridItems.length,
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
                        "${nikeShoePageGridItems.elementAt(index)["images"]}",
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
                        "${nikeShoePageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${nikeShoePageGridItems.elementAt(index)["description"]}",
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
