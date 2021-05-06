import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kareem_ecommerce/Constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.asset,
    this.text,
    this.onPressed,
});
  final String asset,text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Image.asset(asset,color: kPrimaryColor,height: 0.024.sh,),
          SizedBox(
           width :  0.01.sw,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ],

      ),
    );
  }
}
