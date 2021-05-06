import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Constants.dart';

class ImagesContent extends StatelessWidget {
  ImagesContent({
    Key key,
    this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: Column(
            children: [
              Image.asset(
                image,
                height: 0.3.sh,
                width: 0.9.sw,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
