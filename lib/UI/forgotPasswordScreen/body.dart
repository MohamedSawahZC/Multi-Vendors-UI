import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kareem_ecommerce/Constants.dart';
import 'package:kareem_ecommerce/UI/signUPScreen/signUpScreeen.dart';

import 'ForgotPasswordForm.dart';
import 'forgotPasswordScreen.dart';

class ForgotPasswordBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 0.08.sh,
        ),
        Text(
          'Forgot Password',
          style: TextStyle(
            fontSize: 28.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 0.02.sh,
        ),
        Text(
          'Please enter your email and we will send \n you a link to return to your account',
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 0.1.sh,
        ),
        ForgotPasswordForm(),
        SizedBox(
          height: 0.1.sh,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account? ',
              style: TextStyle(fontSize: 16.sp, color: kPrimaryColor),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SignUpScreen.id);
              },
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 20.sp, color: Colors.red),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
