import 'package:flutter/material.dart';
import 'package:kareem_ecommerce/UI/loginScreen/Components/body.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'loginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign In',
        ),
      ),
      body: LoginScreenBody(),
    );
  }
}
