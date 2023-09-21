import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class MeatPage extends StatefulWidget {
  const MeatPage({super.key});

  @override
  State<MeatPage> createState() => _MeatPageState();
}

class _MeatPageState extends State<MeatPage> {
  final List<Map<String, dynamic>> meatPageGridItems = [
    {
      "description": "Halal Beef",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/20-207712_beef-sirloin-beef.png",
    },
    {
      "description": "Beef Mince (Qeema)",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/161-1611121_ground-beef-beef-mince-minced-beef-and-minced.png",
    },
    {
      "description": "Boneless Chicken",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/64-640304_boneless-chicken-breasts-boneless-chicken-png.png",
    },
    {
      "description": "Mutton",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/67-678668_meat-png-free-download-pork-raw-meat-hd.png",
    },
    {
      "description": "Goat Meat",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/99-997166_ham-transparent-raw-goat-meat-png.png",
    },
    {
      "description": "Mutton Mince (Qeema)",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/161-1612204_clip-art-stock-beef-drawing-meat-dish-beef.png",
    },
    {
      "description": "Beef Steak",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/217-2177731_svg-freeuse-download-the-serious-eats-definitive-guide.png",
    },
    {
      "description": "Chicken Leg",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/50-503270_drumsticks-chicken-drumstick-legs-png.png",
    },
    {
      "description": "Sousage",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/320-3201751_sausage-png-image-salami-sausage-png.png",
    },
    {
      "description": "Tofurkey Sousage",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/314-3143552_tofurky-original-sausage-beer-brats-tofurky-sausage.png",
    },
    {
      "description": "Fish Meat",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/67-677990_fish-meat-png-clipart-fish-meat-png.png",
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
      appBar: MyAppBar(appBarText: "Meats"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: meatPageGridItems.length,
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
                        "${meatPageGridItems.elementAt(index)["images"]}",
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
                        "${meatPageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${meatPageGridItems.elementAt(index)["description"]}",
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
