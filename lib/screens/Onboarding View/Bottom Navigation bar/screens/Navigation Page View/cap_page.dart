import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class CapPage extends StatefulWidget {
  const CapPage({super.key});

  @override
  State<CapPage> createState() => _CapPageState();
}

class _CapPageState extends State<CapPage> {
  final List<Map<String, dynamic>> capPageGridItems = [
    {
      "description": "Barbed Wire Camo Cap",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/15-157157_barbed-wire-camo-cap-outdoor-cap-company-inc.png",
    },
    {
      "description": "Character Trucker Cap",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/979-9791649_bugs-bunny-new-era-looney-tunes-character-trucker.png",
    },
    {
      "description": "Baseball Cap",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/6-60154_baseball-cap-png-image-baseball-cap-png.png",
    },
    {
      "description": "Baseball Cap",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/36-365008_cap-png-mart-baseball-cap-png.png",
    },
    {
      "description": "Fender Logo Stretch Cap",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/64-647950_fender-logo-stretch-cap-logo-cap.png",
    },
    {
      "description": "Baseball Cap Transparent",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/76-760062_baseball-cap-png-image-baseball-cap-transparent-background.png",
    },
    {
      "description": "Typhoon Blue Embroidered Cap",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/88-884554_typhoon-blue-embroidered-cap-embroidered-caps.png",
    },
    {
      "description": "Star Fitted Cap",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/159-1597946_new-era-cowboy-star-fitted-cap-cap.png",
    },
    {
      "description": "Fishin' Chill Cap ",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/325-3251975_mens-lets-go-fishin-chill-cap-lets-go.png",
    },
    {
      "description": "High Rise Chill Cap",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/328-3284628_go-fish-bear-high-rise-chill-cap-baseball.png",
    },
    {
      "description": "Damage Ball Cap",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/880-8807061_chicago-white-sox-damage-ball-cap-baseball-cap.png",
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
      appBar: MyAppBar(appBarText: "Caps"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: capPageGridItems.length,
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
                        "${capPageGridItems.elementAt(index)["images"]}",
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
                        "${capPageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${capPageGridItems.elementAt(index)["description"]}",
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
