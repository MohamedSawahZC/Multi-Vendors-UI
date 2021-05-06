import 'package:flutter/material.dart';
import 'package:kareem_ecommerce/Components/RoundedButton.dart';
import 'package:kareem_ecommerce/UI/loginScreen/Components/customSufficIcon.dart';
import 'package:kareem_ecommerce/UI/loginScreen/Components/formError.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kareem_ecommerce/UI/loginScreen/loginScreen.dart';

import '../../Constants.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    String email;
    return Form(
      key: _formKey,
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.07.sw),
            child: Column(
              children: [
                TextFormField(
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
                ),
                FormError(errors: errors),
                SizedBox(
                  height: 0.1.sh,
                ),
                RoundedButton(
                  width: 0.8.sw,
                  height: 0.07.sh,
                  fontSize: 20.sp,
                  textColor: Colors.white,
                  title: 'Continue',
                  buttonColor: kPrimaryColor,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.pushNamed(context, LoginScreen.id);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
