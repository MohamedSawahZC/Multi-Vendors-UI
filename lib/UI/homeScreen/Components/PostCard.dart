import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kareem_ecommerce/UI/homeScreen/Components/customButton.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.Description,
    @required this.onPressed,
    @required this.ProfilePic,
  }) : super(key: key);

  final String category, image,Description,ProfilePic;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
      child: GestureDetector(
        onTap: onPressed,
        child: SizedBox(
          width: 0.9.sw,
          height: 0.25.sh,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  height: 0.3.sh,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF343434).withOpacity(0.06),
                    ),
                  ),
                Row(
                  children: [
                    SizedBox(
                      width: 0.05.sw,
                    ),
                    ClipRRect(

                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(ProfilePic,height: 0.07.sh,
                          fit:BoxFit.fill)
                    ),
                    SizedBox(
                      width: 0.05.sw,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        //horizontal: 0.08.sw,
                        vertical: 0.02.sh,
                      ),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "$category\n",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: Description)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.25.sw,
                    ),
                    Icon(Icons.favorite_border,color: Colors.white,),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.05.sw,vertical: 0.05.sw),
                      child: Container(
                        padding: EdgeInsets.all(0.02.sw),
                        height: 0.05.sh,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              text: 'Like',
                              asset: 'assets/images/like.png',
                            ),
                            SizedBox(
                              width: 0.05.sw,
                            ),
                            CustomButton(
                              text: 'Dislike',
                              asset: 'assets/images/dislike.png',
                            ),
                            SizedBox(
                              width: 0.05.sw,
                            ),
                            CustomButton(
                              text: 'Comment',
                              asset: 'assets/images/comment.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
