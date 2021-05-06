import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import 'CategoryCard.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": Icons.directions_car_rounded, "text": "Cars"},
      {"icon": Icons.directions_car_rounded, "text": "Clothes"},
      {"icon": Icons.directions_car_rounded, "text": "Game"},
      {"icon": Icons.directions_car_rounded, "text": "Food"},
      {"icon": Icons.directions_car_rounded, "text": "Gifts"},
      {"icon": Icons.directions_car_rounded, "text": "Animal"},
    ];
    return Padding(
      padding: EdgeInsets.all(0.04.sw),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            customIcon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}
