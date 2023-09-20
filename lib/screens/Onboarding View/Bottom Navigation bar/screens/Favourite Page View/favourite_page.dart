import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/add_to_cart_page.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home%20page%20widget/home_page_product_data.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home_page_view.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouritePageView extends StatefulWidget {
  final List favoriteItems;
  const FavouritePageView({super.key, required this.favoriteItems});

  @override
  State<FavouritePageView> createState() => _FavouritePageViewState();
}

class _FavouritePageViewState extends State<FavouritePageView> {
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
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: IconButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddToCartPage(
                          item: cartItems,
                        ),
                      ),
                    );
                    setState(() {});
                  },
                  icon: const Icon(
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
                  child: Center(
                    //Appbar
                    child: Text(
                      cartItems.length.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
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
                      "Favourite",
                      style: GoogleFonts.lato(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: AppDarkColors.black1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "Items",
                      style: GoogleFonts.lato(
                        fontSize: 50,
                        fontWeight: FontWeight.w300,
                        color: AppDarkColors.black1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            widget.favoriteItems.isEmpty
                ? Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: Image.asset(
                            "assets/images/fvempty.png",
                            height: 230,
                          ),
                        ),
                      ),
                      Text(
                        "Your Favourite List is empty",
                        style: CustomTextStyle20.h1SemiBold20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Explore more and shortlist some items",
                        style: CustomTextStyle14.h1Medium14,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.favoriteItems.length,
                    itemBuilder: (context, index) {
                      bool isFavorite = homePageProductData[index]["isFav"];
                      Color itemColor = isFavorite == true
                          ? Colors.red
                          : AppDarkColors.black10;
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 25,
                          child: Image.network(
                            "${widget.favoriteItems[index]["images"]}",
                          ),
                        ),
                        title: Text(
                          "${widget.favoriteItems[index]["description"]}",
                          style: CustomTextStyle14.h1Medium14,
                        ),
                        subtitle: Text(
                          "${widget.favoriteItems[index]["price"]}",
                          style: CustomTextStyle14.h1Regular14,
                        ),
                        trailing: InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              if (homePageProductData[index]["isFav"]) {
                                // If it's already a favorite, remove it from favorites
                                homePageProductData[index]["isFav"] = false;
                                widget.favoriteItems
                                    .remove(homePageProductData[index]);
                              } else {
                                // If it's not a favorite, add it to favorites
                                homePageProductData[index]["isFav"] = true;
                                widget.favoriteItems
                                    .add(homePageProductData[index]);
                              }
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite,
                                color: itemColor,
                                size: 25,
                              ),
                            ),
                          ),
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
