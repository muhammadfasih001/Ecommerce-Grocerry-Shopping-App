import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Track%20Order%20View/Track%20Order%20Widget/listTile_.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDarkColors.black1,
      appBar: AppBar(
        titleSpacing: 36,
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: CircleAvatar(
            backgroundColor: AppDarkColors.black10,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.keyboard_arrow_left,
              ),
            ),
          ),
        ),
        title: Text(
          "Track Order",
          style: CustomTextStyle18.h1Regular18,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Stack(
                children: [
                  Container(
                    // color: Colors.blue,
                    height: 450,
                    width: 380,
                    child: Image.asset(
                      "assets/images/Directions.gif",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 370,
                    child: Container(
                      height: 75,
                      width: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppDarkColors.black10,
                      ),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 10,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            backgroundColor: AppDarkColors.black10,
                            radius: 25,
                            child: Image.asset(
                              "assets/images/man.png",
                              width: 45,
                            ),
                          ),
                        ),
                        title: Text(
                          "Delivery Man",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff616A7D),
                          ),
                        ),
                        subtitle: Text(
                          "John Williamson",
                          style: CustomTextStyle18.h1SemiBold18,
                        ),
                        trailing: CircleAvatar(
                          backgroundColor: AppColors.blue,
                          radius: 25,
                          child: Image.asset(
                            "assets/images/Chat.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const ListTileDelivery(
              iconDeliver: Icon(
                Icons.access_time,
              ),
              title: "Delivery In",
              subTitle: "20 Min",
            ),
            const ListTileDelivery(
              iconDeliver: Icon(
                Icons.location_on_outlined,
              ),
              title: "Delivery Address",
              subTitle: "37 New line, Sunamganj",
            ),
            BottomSheet(
              onClosing: () {},
              builder: (context) {
                return Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppDarkColors.black10,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 150),
                        child: Container(
                          height: 5,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.blue,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order Details",
                              style: CustomTextStyle16.h1SemiBold16,
                            ),
                            Text(
                              "(ID: #765433)",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff616A7D),
                              ),
                            ),
                            Container(
                              height: 28,
                              width: 95,
                              decoration: BoxDecoration(
                                color: AppDarkColors.black20,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("Success",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.blue,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
