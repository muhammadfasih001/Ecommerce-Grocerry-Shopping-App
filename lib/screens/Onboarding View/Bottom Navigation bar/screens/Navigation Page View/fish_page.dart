import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class FishPage extends StatefulWidget {
  const FishPage({super.key});

  @override
  State<FishPage> createState() => _FishPageState();
}

class _FishPageState extends State<FishPage> {
  final List<Map<String, dynamic>> fishPageGridItems = [
    {
      "description": "Flounder Fish",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/1-16070_fish-png-image-fishes-available-in-india.png",
    },
    {
      "description": "Betta Fish",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/196-1960050_join-captain-dave-gardner-gulf-of-mexico-fish.png",
    },
    {
      "description": "Goldie Fish",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/3-31061_ocean-fish-png-clipart-black-and-white-download.png",
    },
    {
      "description": "Marlin Fish",
      "price": "\$125",
      "images": "https://www.nicepng.com/png/full/2-25450_fish-png.png",
    },
    {
      "description": "Neptune Fish",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/3-33617_fish-png-clipart-fish-png.png",
    },
    {
      "description": "Barracuda Fish",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/8-83439_free-png-fish-png-images-transparent-flying-fish.png",
    },
    {
      "description": "Anchovy Fish",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/59-597265_fish-png-image-transparent-picture-of-fish.png",
    },
    {
      "description": "Swordfish Fish",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/271-2716014_catch-amazing-fish-with-msfishingcharter-lady-fish.png",
    },
    {
      "description": "Tuna Fish",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/248-2486582_river-fish-png-types-of-fish.png",
    },
    {
      "description": "Salmon Fish",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/9-97053_carassius-gibelio-by-george-chernilevsky-fish-transparent-background.png",
    },
    {
      "description": "Sardine Fish",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/67-677374_and-png-transparent-images-pluspng-free-fish-meat.png",
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
      appBar: MyAppBar(appBarText: "Big and Small Fishes"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: fishPageGridItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            mainAxisExtent: 252,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              //
              child: Stack(
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
                          "${fishPageGridItems.elementAt(index)["images"]}",
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
                          "${fishPageGridItems.elementAt(index)["price"]}",
                          style: CustomTextStyle18.h1Bold18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "${fishPageGridItems.elementAt(index)["description"]}",
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
                      onTap: () {
                        //
                      },
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
              ),
            );
          },
        ),
      ),
    );
  }
}
