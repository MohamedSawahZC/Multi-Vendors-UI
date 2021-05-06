import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'title&DetailsCard.dart';
import 'ProductImages.dart';

class ProductDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 0.37.sh,
          child: ProductImages(),
        ),
        DetailsCard(
          title:
              'Samsung Galaxy A71 - 6.7-inch 128GB/8GB \nDual SIM 4G Mobile Phone - Prism Crush Black',
          brand: 'Samsung',
          price: 6333,
        ),
      ],
    );
  }
}
