import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountCard extends StatelessWidget {
  DiscountCard({
    this.color,
    this.title,
    this.description,
});
  final Color color;
  final String title,description;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal :0.07.sw),
      padding: EdgeInsets.symmetric(horizontal: 0.1.sw,vertical:0.05.sw),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: title,
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: description,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ),
    );
  }
}
