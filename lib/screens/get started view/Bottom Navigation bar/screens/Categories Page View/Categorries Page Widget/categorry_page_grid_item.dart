import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';

class CategorryPageGridItem extends StatefulWidget {
  const CategorryPageGridItem({super.key});

  @override
  State<CategorryPageGridItem> createState() => _CategorryPageGridItemState();
}

class _CategorryPageGridItemState extends State<CategorryPageGridItem> {
  final List<Map<String, dynamic>> categorryPageGridItem = [
    {
      "title": "Fishe",
      "subtitle": "From Sea",
      "images":
          "https://www.nicepng.com/png/full/1-17276_fish-png-four-transparent-background-fish-png.png",
    },
    {
      "title": "Meats",
      "subtitle": "Organic",
      "images":
          "https://www.nicepng.com/png/full/67-676751_raw-meat-png-clipart-meat-transparent-background.png",
    },
    {
      "title": "Vegetables",
      "subtitle": "Organic",
      "images":
          "https://www.nicepng.com/png/full/6-67893_fruits-vegetables-png-fruits-and-vegetables-png.png",
    },
    {
      "title": "Fruits",
      "subtitle": "Fresh & Organic",
      "images":
          "https://www.nicepng.com/png/full/7-70090_fruit-basket-fruits-png-isolated-basket-of-fruits.png",
    },
    {
      "title": "Cooking Oil",
      "subtitle": "Organic",
      "images":
          "https://www.nicepng.com/png/full/50-504966_our-range-of-cooking-oils-for-healthy-and.png",
    },
    {
      "title": "",
      "subtitle": "",
      "images":
          "https://www.nicepng.com/png/full/388-3882017_apple-i-phone-6s-gold.png",
    },
    {
      "title": "",
      "subtitle": "",
      "images": "",
    },
    {
      "title": "",
      "subtitle": "",
      "images": "",
    },
    {
      "title": "",
      "subtitle": "",
      "images": "",
    },
    {
      "title": "",
      "subtitle": "",
      "images": "",
    },
    {
      "title": "",
      "subtitle": "",
      "images": "",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: GridView.builder(
        itemCount: categorryPageGridItem.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: 200,
        ),
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            decoration: BoxDecoration(
              color: AppDarkColors.black10,
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      ),
    );
  }
}
