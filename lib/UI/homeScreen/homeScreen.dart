import 'package:flutter/material.dart';
import 'package:kareem_ecommerce/Constants.dart';
import 'package:kareem_ecommerce/UI/homeScreen//Components/body.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenBody(),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: kPrimaryColor,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}