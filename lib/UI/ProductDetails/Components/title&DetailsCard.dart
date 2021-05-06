import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_simple_rating_bar/flutter_simple_rating_bar.dart';

class DetailsCard extends StatelessWidget {
  DetailsCard({
   this.title,
   this.brand,
   this.price,
});
  final String title,brand;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 0.05.sw),
      child: Padding(
        padding: EdgeInsets.all(0.05.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
          ),
          Text(
            'Brand: $brand',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price: $price LE',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.red[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
              RatingBar(
                rating: 4,
                icon:Icon(Icons.star,size:20,color: Colors.grey,),
                starCount: 5,
                spacing:9,
                size: 0.04,
                isIndicator: false,
                allowHalfRating: true,
                onRatingCallback: (double value,ValueNotifier<bool> isIndicator){
                  print('Number of stars-->  $value');
                  //change the isIndicator from false  to true ,the       RatingBar cannot support touch event;
                  isIndicator.value=true;
                },
                color: Colors.amber,
              )
            ],
          ),
        ],
        ),
      ),
    );
  }
}
