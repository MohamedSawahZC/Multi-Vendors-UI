import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kareem_ecommerce/Constants.dart';
import 'package:kareem_ecommerce/UI/signUPScreen/Components/SignUpForm.dart';
import 'package:sign_button/sign_button.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 0.04.sh,
            ),
            Text(
              'Register Account',
              style: headingStyle,
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            Text(
              'Complete your details or continue \n with social media',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            SignUpForm(),
            SizedBox(
              height: 0.02.sh,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignInButton.mini(
                  buttonType: ButtonType.google,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.facebook,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            Text(
              'By continuing your confirm that you agree \n with our term and Conditin',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
