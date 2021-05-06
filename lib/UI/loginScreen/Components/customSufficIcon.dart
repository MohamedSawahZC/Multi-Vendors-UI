import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSuffixIconIcon extends StatelessWidget {
  const CustomSuffixIconIcon({
    Key key,
    @required this.svgIconPath,
  }) : super(key: key);
  final String svgIconPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0.03.sw, 0.04.sw, 0.03.sw),
      child: new SvgPicture.asset(
        svgIconPath,
        height: 0.02.sw,
      ),
    );
  }
}
