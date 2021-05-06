import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kareem_ecommerce/Components/RoundedButton.dart';
import 'package:kareem_ecommerce/Constants.dart';
import 'package:kareem_ecommerce/UI/homeScreen/homeScreen.dart';
import 'Components/ProductDetailBody.dart';
import 'Components/RoundedIconButton.dart';

class ProductDetailScreen extends StatelessWidget {
  static const String id = 'ProductDetailScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(left: 0.03.sw,top: 0.01.sh),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedIconButton(
                iconData: Icons.arrow_back_ios,
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
      body: ProductDetailsBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.05.sw,vertical: 0.01.sh),
        child: RoundedButton(
          title: 'Add to Cart',
          onPressed: (){},
          fontSize: 22.sp,
          buttonColor: kPrimaryColor,
          textColor: Colors.white,
          width: 0.8.sw,
          height: 0.07.sh,
        ),
      ),
    );
  }
}
