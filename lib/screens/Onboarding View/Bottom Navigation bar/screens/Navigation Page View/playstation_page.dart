import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Navigation%20Page%20View/widget/my_app_bar.dart';

class PlaystationPage extends StatefulWidget {
  const PlaystationPage({super.key});

  @override
  State<PlaystationPage> createState() => _PlaystationPageState();
}

class _PlaystationPageState extends State<PlaystationPage> {
  final List<Map<String, dynamic>> playStationPageGridItems = [
    {
      "description": "Sony PS4",
      "price": "\$325",
      "images":
          "https://www.nicepng.com/png/full/70-707941_playstation-playstation-4-no-background.png",
    },
    {
      "description": "Sony PS3",
      "price": "\$89",
      "images":
          "https://www.nicepng.com/png/full/86-864926_sony-playstation-3-cecha01-wcontroller-l-sony-playstation.png",
    },
    {
      "description": "Power CNTRL 4",
      "price": "\$525",
      "images":
          "https://www.nicepng.com/png/full/13-137920_authentic-sony-quality-playstation-4.png",
    },
    {
      "description": "Paraventa PS2",
      "price": "\$125",
      "images":
          "https://www.nicepng.com/png/full/210-2105167_this-change-will-not-affect-playstation-plus-prices.png",
    },
    {
      "description": "PS4 Ultra",
      "price": "\$79",
      "images":
          "https://www.nicepng.com/png/full/16-160759_ps4-playstation-4.png",
    },
    {
      "description": "PS4 Slim Silver",
      "price": "\$50",
      "images":
          "https://www.nicepng.com/png/full/19-193822_ps4-slim-500-gb-silv-playstation-4-slim.png",
    },
    {
      "description": "Pre PS1",
      "price": "\$100",
      "images":
          "https://www.nicepng.com/png/full/86-864813_playstation-1-console-pre-owned-ps1.png",
    },
    {
      "description": "Sony PS Vr-5.7",
      "price": "\$23",
      "images":
          "https://www.nicepng.com/png/full/264-2646353_sony-sony-playstation-vr-5-7-virtual-reality-headset.png",
    },
    {
      "description": "PS2 Ultra Slim",
      "price": "\$12",
      "images":
          "https://www.nicepng.com/png/full/234-2342100_ps2-slim-playstation-2-console-slimline-black-ps2.png",
    },
    {
      "description": "PS Vr",
      "price": "\$40",
      "images":
          "https://www.nicepng.com/png/full/359-3590200_psvr-png-sony-playstation-vr-headset-ps4.png",
    },
    {
      "description": "PS4 White",
      "price": "\$200",
      "images":
          "https://www.nicepng.com/png/full/317-3175993_ride-in-a-personalized-uncharted-jeep-in-geneva.png",
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
      appBar: MyAppBar(appBarText: "Playstation Console"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: playStationPageGridItems.length,
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
                        "${playStationPageGridItems.elementAt(index)["images"]}",
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
                        "${playStationPageGridItems.elementAt(index)["price"]}",
                        style: CustomTextStyle18.h1Bold18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "${playStationPageGridItems.elementAt(index)["description"]}",
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
