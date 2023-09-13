import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_groccery_app/constant/App.colors.dart';
import 'package:flutter_groccery_app/constant/custom_textStyle.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartPage extends StatefulWidget {
  final List item;
  const AddToCartPage({super.key, required this.item});

  @override
  State<AddToCartPage> createState() => _AddToCartPageState();
}

class _AddToCartPageState extends State<AddToCartPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.orangeLite));
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.blue));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 240,
                    width: double.infinity,
                    color: AppColors.orangeLite,
                  ),
                  Positioned(
                    bottom: 60,
                    child: Image.asset(
                      "assets/images/#.png",
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 250,
                    child: Image.asset("assets/images/Vector.png"),
                  ),
                  Positioned(
                    top: 135,
                    left: 115,
                    child: Image.asset("assets/images/25.png"),
                  ),
                  Positioned(
                    left: 298,
                    top: 118,
                    child: Text(
                      "OFF!!",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: AppDarkColors.black1,
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 25),
                        child: Text(
                          "Shopping Cart",
                          style: CustomTextStyle16.h1Medium16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.orange,
                ),
                child: Center(
                  child: Text(
                    "Use code #HalalFood at Checkouut",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              widget.item.isEmpty
                  ? Center(
                      child: Image.asset(
                        "assets/images/empty.png",
                        height: 380,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.all(12),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: widget.item.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 25,
                              child: Image.network(
                                  "${widget.item[index]["images"]}"),
                            ),
                            title: Text("${widget.item[index]["description"]}",
                                style: CustomTextStyle14.h1Medium14),
                            subtitle: Text(
                              "${widget.item[index]["price"]}",
                              style: CustomTextStyle14.h1Regular14,
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  //
                                  setState(() {
                                    widget.item.removeAt(index);
                                  });
                                },
                                icon: Icon(Icons.delete)),
                          );
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
