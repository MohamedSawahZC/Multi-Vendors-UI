import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kareem_ecommerce/Components/RoundedButton.dart';
import 'package:kareem_ecommerce/Constants.dart';
import 'package:kareem_ecommerce/UI/loginScreen/loginScreen.dart';
import 'package:kareem_ecommerce/UI/splashScreen/Components/splashScreenContent.dart';

import 'AnimatedContainer.dart';
import 'ImagesContent.dart';

int currentPage = 0;

class ProductImages extends StatefulWidget {
  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to I-SHOP, Let’s shop!",
      "image": "assets/images/Mobile1.jpg"
    },
    {
      "text": "We help people connect with store \naround Egypt",
      "image": "assets/images/Mobile2.jpg"
    },
    {
      "text": "We show the easy way to shop. \n Just stay at home with us",
      "image": "assets/images/Mobile3.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 0.35.sh,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => ImagesContent(
                image: splashData[index]['image'],
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  splashData.length,
                      (index) =>
                      buildDot(index: index, currentPage: currentPage),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
