import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class VegetablePage extends StatefulWidget {
  const VegetablePage({super.key});

  @override
  State<VegetablePage> createState() => _VegetablePageState();
}

class _VegetablePageState extends State<VegetablePage> {
  final List<Map<String, dynamic>> vegetablePageGridItems = [
    {
      "description": "Potatoes",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/21-217941_french-fries-baked-potato-gunny-sack-mashed-potato.png",
    },
    {
      "description": "Carrots",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/25-256670_free-images-toppng-transparent-svg-royalty-free-transparent.png",
    },
    {
      "description": "Parsnips",
      "price": "\$525",
      "images": "https://www.nicepng.com/png/full/562-5626833_parsnips.png",
    },
    {
      "description": "Turnips",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/85-857497_turnips-png-image-turnips-png.png",
    },
    {
      "description": "Beets",
      "price": "\$79",
      "images": "https://www.nicepng.com/png/full/50-508054_beet-png.png",
    },
    {
      "description": "Cabbages",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/94-942402_-cabbage-transparent-background.png",
    },
    {
      "description": "Red Onion",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/14-142464_onion-png-image-onion-export-banners.png",
    },
    {
      "description": "Capsicum",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/256-2564367_capsicum-green-capsicum-image-hd.png",
    },
    {
      "description": "Tomatoes",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/5-54156_tomato-png-picture-transparent-background-tomatoes-png.png",
    },
    {
      "description": "Ginger",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/93-933298_free-png-ginger-png-file-png-images-transparent.png",
    },
    {
      "description": "Corn",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/9-96484_corn-png-image-corn-png-image-surepromise-10.png",
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
      appBar: MyAppBar(appBarText: "Vegetables"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: vegetablePageGridItems.length,
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
                        "${vegetablePageGridItems.elementAt(index)["images"]}",
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
                        "${vegetablePageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${vegetablePageGridItems.elementAt(index)["description"]}",
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
