import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kareem_ecommerce/Constants.dart';
import 'package:kareem_ecommerce/UI/ProductDetails/ProductDetails.dart';
import 'package:kareem_ecommerce/UI/homeScreen/Components/DiscountCard.dart';
import 'package:kareem_ecommerce/UI/homeScreen/Components/HomeHeader.dart';

import 'Catergories.dart';
import 'PostCard.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HomeHeader(),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 0.03.sh,
                ),
                DiscountCard(
                  color: kPrimaryColor,
                  title: 'A Summer Offer\n',
                  description: 'Cashback 20%',
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.08.sw),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'See All',
                          style: TextStyle(
                              color: Colors.lightBlue, fontSize: 15.sp),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal, child: Categories()),
                PostCard(
                  image: "assets/images/Image Banner 2.png",
                  ProfilePic: 'assets/images/Profile Image.png',
                  category: "Samsung",
                  Description: 'S3 New',
                  onPressed: () {
                    Navigator.pushNamed(context, ProductDetailScreen.id);
                  },
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                PostCard(
                  image: "assets/images/Image Banner 3.png",
                  ProfilePic: 'assets/images/Profile Image.png',
                  category: "T-Shirt Zara",
                  Description: 'Offer',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                PostCard(
                  image: "assets/images/Image Banner 3.png",
                  ProfilePic: 'assets/images/Profile Image.png',
                  category: "T-Shirt Zara",
                  Description: 'Offer',
                  onPressed: () {},
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
