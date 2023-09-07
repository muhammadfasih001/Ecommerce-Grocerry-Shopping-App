import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';

const double kToolbarHeight = 80;

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String appBarText;

  const MyAppBar({super.key, required this.appBarText});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
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
          icon: const Icon(
            Icons.search,
            color: Colors.black,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 28,
          ),
        ),
      ],
    );
  }
}
