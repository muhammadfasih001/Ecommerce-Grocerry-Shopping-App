import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Categories%20Page%20View/categorries_page.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Favourite%20Page%20View/favourite_page.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Home%20Page%20View/home_page_view.dart';
import 'package:flutter_groccery_app/screens/Onboarding%20View/Bottom%20Navigation%20bar/screens/Order%20Page%20View/order_page.dart';

class CurvedNavigationBottom extends StatefulWidget {
  const CurvedNavigationBottom({super.key});

  @override
  State<CurvedNavigationBottom> createState() => _CurvedNavigationBottomState();
}

class _CurvedNavigationBottomState extends State<CurvedNavigationBottom> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomePageView(),
    const CategorriesPageView(),
    FavouritePageView(favoriteItems: favItems),
    OrderPageView(orderList: orderItem),
  ];

  _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppDarkColors.black1,
        bottomNavigationBar: CurvedNavigationBar(
          color: AppColors.blue,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: _currentIndex,
          onTap: _onTabTapped,
          items: [
            Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.grid_view_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite_outline,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
        body: _screens[_currentIndex],
      ),
    );
  }
}
