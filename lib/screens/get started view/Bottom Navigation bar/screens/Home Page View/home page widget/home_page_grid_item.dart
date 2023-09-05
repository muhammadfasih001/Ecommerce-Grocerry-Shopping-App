import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';

class HomePageGridItem extends StatefulWidget {
  const HomePageGridItem({super.key});

  @override
  State<HomePageGridItem> createState() => _HomePageGridItemState();
}

class _HomePageGridItemState extends State<HomePageGridItem> {
  final List<Map<String, dynamic>> homePageGridItems = [
    {
      "description": "Lemonade Package 1 | 1 bundle",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/31-313318_lemonade-fruits-png-clip-art-black-and-white.png",
    },
    {
      "description": "Lipton Tea Package 2 | 1 bundle",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/499-4998897_lipton-tea-powder-instant-tea-drink-pack-100.png",
    },
    {
      "description": "Brit Meat Package 3 | 1 bundle",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/1010-10101767_brit-pat-meat-corned-beef.png",
    },
    {
      "description": "Almonds Package 4 | 1 bundle",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/98-983611_good-food-mart-california-almond-raw-packing-size.png",
    },
    {
      "description": "Cookie Package 4 | 1 pack",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/79-794049_grandmas-cookies-variety-pack-36-count.png",
    },
    {
      "description": "Chinees Noddles Package 5 | 1 pack",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/125-1255106_a-sichuan-favorite-this-popular-chinese-dish-features.png",
    },
    {
      "description": "Cooking Oil Package 6 | 1 bundle",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/50-504966_our-range-of-cooking-oils-for-healthy-and.png",
    },
    {
      "description": "Sauce Package 7 | 1 pack",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/100-1002870_2-bottles-of-fangs-chilli-sauce-chilli-sauce.png",
    },
    {
      "description": "Vegetables Package 8 | 1 bundle",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/760-7607243_free-png-download-vegetables-png-images-background-organic.png",
    },
    {
      "description": "Bag AW Package 9 | 1 pack",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/385-3856719_premium-duffle-bag-bauer-premium-carry-bag-navy.png",
    },
    {
      "description": "Apple Watch Package 10 | 1 bundle",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/442-4425371_smartwatches-came-into-our-lives-like-smartphones-and.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: GridView.builder(
        itemCount: homePageGridItems.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
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
                      "${homePageGridItems.elementAt(index)["images"]}",
                      width: double.infinity,
                      height: 160,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14, right: 14),
                    child: Divider(
                      color: AppColors.blue,
                      // height: 25,
                      thickness: 0.1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "${homePageGridItems.elementAt(index)["price"]}",
                      style: CustomTextStyle18.h1Bold18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "${homePageGridItems.elementAt(index)["description"]}",
                      style: CustomTextStyle14.h1SemiBold14,
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 15,
                top: 160,
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
    );
  }
}
