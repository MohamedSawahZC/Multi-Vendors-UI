import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
    this.customIcon,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;
  final IconData customIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 0.2.sw,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(0.009.sw),
              height: 0.06.sh,
              width: 0.15.sw,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(customIcon,color: Colors.white,),
            ),
            SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
