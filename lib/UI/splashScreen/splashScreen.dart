import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Components/body.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splashScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(flex: 2, child: SplashScreenBody()),
          ],
        ),
      ),
    );
  }
}
