import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Add%20To%20Cart%20Page%20View/Add%20to%20Cart%20Widget/add_to_cart_page.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home_page_view.dart';

const double kToolbarHeight = 80;

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String appBarText;

  const MyAppBar({super.key, required this.appBarText});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 36,
      backgroundColor: Colors.transparent,
      toolbarHeight: kToolbarHeight,
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
        widget.appBarText,
        style: CustomTextStyle18.h1Regular18,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.black,
            size: 28,
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: IconButton(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddToCartPage(item: cartItems),
                    ),
                  );
                  setState(() {});
                },
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 28,
                  color: Colors.black,
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
    );
  }
}
