import 'package:flutter/material.dart';
import 'package:kareem_ecommerce/UI/signUPScreen/Components/body.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = 'SignUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign Up'),
      ),
      body: SignUpBody(),
    );
  }
}
