import 'package:flutter/material.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';

class ListTileDelivery extends StatelessWidget {
  final Icon iconDeliver;
  final String title;
  final String subTitle;
  const ListTileDelivery(
      {super.key,
      required this.iconDeliver,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: iconDeliver,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xff616A7D),
        ),
      ),
      subtitle: Text(
        subTitle,
        style: CustomTextStyle16.h1SemiBold16,
      ),
    );
  }
}
