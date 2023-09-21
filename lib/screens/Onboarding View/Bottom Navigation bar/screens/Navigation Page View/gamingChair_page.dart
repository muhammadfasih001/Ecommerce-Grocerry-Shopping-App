import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class GamingChairPage extends StatefulWidget {
  const GamingChairPage({super.key});

  @override
  State<GamingChairPage> createState() => _GamingChairPageState();
}

class _GamingChairPageState extends State<GamingChairPage> {
  final List<Map<String, dynamic>> gamingChairPageGridItems = [
    {
      "description": "Wwe Gaming Chair",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/42-428303_clutch-throttle-series-stone-cold-steve-austin-wwe.png",
    },
    {
      "description": "Mgc0 Gaming Chair",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/295-2952740_mgc0-gaming-chair-mars-gaming-chair.png",
    },
    {
      "description": "Green And Black Gaming Chair",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/619-6194479_bundle-arozzi-vernazza-super-premium-gaming-chair-and.png",
    },
    {
      "description": "esoro Zone Balance Gaming Chair",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/295-2953095_gaming-chair-tesoro-zone-balance-gaming-chair.png",
    },
    {
      "description": "Black And Yellow Gaming Chair",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/865-8656236_black-and-yellow-gaming-chair.png",
    },
    {
      "description": "Macho Man Clutch Chair",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/111-1110450_clutch-throttle-series-macho-man-randy-savage-wwe.png",
    },
    {
      "description": "Dx Racer Style Chairs",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/401-4019722_clutch-chairz-premium-gaming-computer-chair-black-dx.png",
    },
    {
      "description": "Cougar Armor Gaming Chair",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/820-8204501_armor-black-cougar-armor-gaming-chair.png",
    },
    {
      "description": " Aj Styles Gaming Chair",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/143-1439203_throttle-series-aj-styles-phenomenal-aj-styles-gaming.png",
    },
    {
      "description": "Ak Racing Sx Gaming Chairs",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/411-4112715_ak-racing-core-series-sx-gaming-chair-ak.png",
    },
    {
      "description": " X-rocker Pro Gaming Chair-Black",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/42-428519_best-gaming-chair-computer-gaming-chair-x-rocker.png",
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
      appBar: MyAppBar(appBarText: "Gaming Chairs"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: gamingChairPageGridItems.length,
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
                        "${gamingChairPageGridItems.elementAt(index)["images"]}",
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
                        "${gamingChairPageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${gamingChairPageGridItems.elementAt(index)["description"]}",
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
