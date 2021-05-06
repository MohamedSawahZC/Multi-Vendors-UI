import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    this.onPressed,
    this.iconData,
    Key key,
  }) : super(key: key);
  @required
  final IconData iconData;
  @required
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.02.sh,
      width: 0.05.sw,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        color: Colors.white,
        onPressed: onPressed,
        child: Icon(iconData),
      ),
    );
  }
}
