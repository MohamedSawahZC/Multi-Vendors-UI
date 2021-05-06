import 'package:flutter/material.dart';
import 'package:kareem_ecommerce/UI/forgotPasswordScreen/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String id = 'ForgotPasswordScreen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Forgot Password',
        ),
      ),
      body: ForgotPasswordBody(),
    );
  }
}
