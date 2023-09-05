import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/get%20started%20view/Bottom%20Navigation%20bar/screens/Categories%20Page%20View/Categorries%20Page%20Widget/categorry_page_grid_item.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorriesPageView extends StatefulWidget {
  const CategorriesPageView({super.key});

  @override
  State<CategorriesPageView> createState() => _CategorriesPageViewState();
}

class _CategorriesPageViewState extends State<CategorriesPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDarkColors.black1,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.blue,
        elevation: 0,
        title: Text(
          "Hey, Fasih",
          style: CustomTextStyle22.h1SemiBold22,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    size: 28,
                  ),
                ),
              ),
              Positioned(
                right: 6,
                top: 20,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "Shop",
                      style: GoogleFonts.lato(
                        fontSize: 50,
                        fontWeight: FontWeight.w300,
                        color: AppDarkColors.black1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "By Category",
                      style: GoogleFonts.lato(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: AppDarkColors.black1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CategorryPageGridItem(),
          ],
        ),
      ),
    );
  }
}
