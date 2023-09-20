import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home%20page%20widget/home_page_product_data.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Product%20detail%20Page%20View/lemonade_page.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Product%20detail%20Page%20View/lipton_tea_page.dart';

class HomePageGridItem extends StatefulWidget {
  final Function(int) addToCartCallBack;
  final Function(int) addToFavCallBack;

  const HomePageGridItem(
      {super.key,
      required this.addToCartCallBack,
      required this.addToFavCallBack});

  @override
  State<HomePageGridItem> createState() => _HomePageGridItemState();
}

class _HomePageGridItemState extends State<HomePageGridItem> {
  _navigateToProductPage(int index) {
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LemonadePage()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LiptonTeaPage()));
        break;
      case 2:
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const VegetablePage()));
        break;
      case 3:
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const FruitPage()));
        break;
      case 4:
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const CookingOilPage()));
        break;
      case 5:
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const NikeShoePage()));
        break;
      case 6:
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const PlaystationPage()));
        break;
      case 7:
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const MensJacketPage()));
        break;
      case 8:
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const HeadphonePage()));
        break;

      case 9:
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => const CapPage()));
        break;
      case 10:
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => const GamingChairPage()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: GridView.builder(
        itemCount: homePageProductData.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: 252,
        ),
        itemBuilder: (context, index) {
          bool isFavorite = homePageProductData[index]["isFav"];
          Color itemColor =
              isFavorite == true ? Colors.red : AppDarkColors.black10;

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
                  InkWell(
                    onTap: () {
                      _navigateToProductPage(index);
                    },
                    child: ClipRRect(
                      child: Image.network(
                        "${homePageProductData.elementAt(index)["images"]}",
                        width: double.infinity,
                        height: 160,
                        fit: BoxFit.contain,
                      ),
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
                      "${homePageProductData.elementAt(index)["price"]}",
                      style: CustomTextStyle18.h1Bold18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "${homePageProductData.elementAt(index)["description"]}",
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
                right: 14,
                top: 165,
                child: InkWell(
                  onTap: () {
                    widget.addToCartCallBack(index);
                  },
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
              Positioned(
                right: 60,
                top: 165,
                child: InkWell(
                  onTap: () {
                    widget.addToFavCallBack(index);
                  },
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor: AppColors.blue,
                    child: Icon(
                      Icons.favorite,
                      color: itemColor,
                      size: 25,
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
