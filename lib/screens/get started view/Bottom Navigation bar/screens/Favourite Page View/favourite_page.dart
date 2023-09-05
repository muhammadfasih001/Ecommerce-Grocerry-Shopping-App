import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';

class FavouritePageView extends StatefulWidget {
  const FavouritePageView({super.key});

  @override
  State<FavouritePageView> createState() => _FavouritePageViewState();
}

class _FavouritePageViewState extends State<FavouritePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDarkColors.black1,
      appBar: AppBar(title: Text("Favourite Page")),
    );
  }
}
