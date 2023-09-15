import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';

const double kToolbarHeight = 80;

class MyCustomAppBarAllUse extends StatefulWidget
    implements PreferredSizeWidget {
  final String appBarText;

  const MyCustomAppBarAllUse({super.key, required this.appBarText});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<MyCustomAppBarAllUse> createState() => _MyCustomAppBarAllUseState();
}

class _MyCustomAppBarAllUseState extends State<MyCustomAppBarAllUse> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppDarkColors.black1));
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.orangeLite));
    super.dispose();
  }

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
    );
  }
}
