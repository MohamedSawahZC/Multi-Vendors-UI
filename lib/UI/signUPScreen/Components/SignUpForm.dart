import 'package:flutter/material.dart';
import 'package:kareem_ecommerce/UI/complete_profile/complete_profile_screen.dart';
import 'package:kareem_ecommerce/UI/loginScreen/Components/customSufficIcon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Constants.dart';
import 'package:kareem_ecommerce/Components/RoundedButton.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email, password, confirmPassword;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.07.sw),
        child: Column(
          children: [
            buildTextFormField(),
            SizedBox(
              height: 0.04.sh,
            ),
            buildTextFormFieldPassword(),
            SizedBox(
              height: 0.04.sh,
            ),
            buildTextFormFieldConfirmPassword(),
            SizedBox(
              height: 0.05.sh,
            ),
            RoundedButton(
              width: 0.8.sw,
              height: 0.07.sh,
              fontSize: 20.sp,
              textColor: Colors.white,
              title: 'Sign Up',
              buttonColor: kPrimaryColor,
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, CompleteProfileScreen.id);
                }
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildTextFormFieldPassword() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        password = value;
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIconIcon(
          svgIconPath: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildTextFormFieldConfirmPassword() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (password == confirmPassword) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
        confirmPassword = value;
        return null;
      },
      validator: (value) {
        if (password != confirmPassword) {
          setState(() {
            errors.add(kMatchPassError);
          });
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-enter your password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIconIcon(
          svgIconPath: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      onSaved: (newValue) => email = newValue,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIconIcon(
          svgIconPath: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }
}
