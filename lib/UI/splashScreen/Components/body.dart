import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kareem_ecommerce/Components/RoundedButton.dart';
import 'package:kareem_ecommerce/Constants.dart';
import 'package:kareem_ecommerce/UI/loginScreen/loginScreen.dart';
import 'package:kareem_ecommerce/UI/splashScreen/Components/splashScreenContent.dart';

import 'AnimatedController.dart';

int currentPage = 0;

class SplashScreenBody extends StatefulWidget {
  @override
  _SplashScreenBodyState createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to I-SHOP, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people connect with store \naround Egypt",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \n Just stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 0.1.sh),
            Expanded(
              flex: 8,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashScreenContent(
                  image: splashData[index]['image'],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) =>
                          buildDot(index: index, currentPage: currentPage),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 0.07.sh),
              child: RoundedButton(
                width: 0.8.sw,
                height: 0.07.sh,
                fontSize: 20.sp,
                textColor: Colors.white,
                title: 'Continue',
                buttonColor: kPrimaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
