import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kareem_ecommerce/UI/homeScreen/homeScreen.dart';
import 'UI/ProductDetails/ProductDetails.dart';
import 'UI/Theme.dart';
import 'UI/loginScreen/loginScreen.dart';
import 'UI/splashScreen/splashScreen.dart';
import 'UI/forgotPasswordScreen/forgotPasswordScreen.dart';
import 'UI/signUPScreen/signUpScreeen.dart';
import 'UI/complete_profile/complete_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialAppWidget(),
    );
  }
}

class MaterialAppWidget extends StatelessWidget {
  const MaterialAppWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ForgotPasswordScreen.id: (context) => ForgotPasswordScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        CompleteProfileScreen.id: (context) => CompleteProfileScreen(),
        HomeScreen.id : (context) => HomeScreen(),
        ProductDetailScreen.id : (context) => ProductDetailScreen(),
      },
    );
  }
}
