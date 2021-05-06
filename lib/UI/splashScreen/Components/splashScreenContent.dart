import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Constants.dart';

class SplashScreenContent extends StatelessWidget {
  SplashScreenContent({
    Key key,
    this.image,
    this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                'I-SHOP',
                style: TextStyle(
                    fontSize: 35.sp,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
              Image.asset(
                image,
                height: 0.5.sh,
                width: 0.8.sw,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
