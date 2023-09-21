import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class HeadphonePage extends StatefulWidget {
  const HeadphonePage({super.key});

  @override
  State<HeadphonePage> createState() => _HeadphonePageState();
}

class _HeadphonePageState extends State<HeadphonePage> {
  final List<Map<String, dynamic>> headphonePageGridItems = [
    {
      "description": "Neon Yellow WH",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/87-875046_beats-by-dre-mixr-white-high-performance-professional.png",
    },
    {
      "description": "Miikey Rhythm WH",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/102-1020371_miikey-rhythm-pro-wireless-bluetooth-miikey-rhythm-pro.png",
    },
    {
      "description": "Mobi Mountain WH",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/116-1164145_headphones-transparent-bluetooth-mobi-mountain-ms02-bluetooth-headphones.png",
    },
    {
      "description": "Teal Beats WH",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/171-1719847_beats-by-dr-dre-teal-beats-headphones.png",
    },
    {
      "description": "Dr Dre WH",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/165-1659696_beats-by-dr-dr-dre-headphones-red.png",
    },
    {
      "description": "Monster Dna Black WH",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/209-2099550_dna-headphones-by-monster-monster-dna-black-on.png",
    },
    {
      "description": "Closed Back Over WH",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/252-2528552_focal-listen-premium-mobile-headphones-focal-listen-closed.png",
    },
    {
      "description": "Miikey Miirhythm Red WH",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/218-2182633_miikey-miirhythm-wireless-bluetooth-headphone-with-miikey-miirhythm.png",
    },
    {
      "description": "Budget Over 2017 WH",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/761-7611554_budget-over-the-ear-headphones-best-wireless-headphones.png",
    },
    {
      "description": "Beats Studio WH",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/340-3407042_beats-by-dr-dr-dre-headphones-blue.png",
    },
    {
      "description": "Doctor Who WH",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/18-185618_next-doctor-who-headphones.png",
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
      appBar: MyAppBar(appBarText: "Heaphones"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: headphonePageGridItems.length,
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
                        "${headphonePageGridItems.elementAt(index)["images"]}",
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
                        "${headphonePageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${headphonePageGridItems.elementAt(index)["description"]}",
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
