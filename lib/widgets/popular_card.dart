import 'package:flutter/material.dart';
import 'package:pie_cake/theme.dart';

class PopularCard extends StatelessWidget {

  final String imageUrl;
  final String duration;
  final String text;
  final String score;

  PopularCard({required this.imageUrl, required this.duration, required this.text, required this.score,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/order');
      },
      child: Container(
        width: 150,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgGreyColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  imageUrl,
                  width: 126,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 86,
                    height: 25,
                    decoration: BoxDecoration(
                      color: bgGreyColor.withOpacity(0.4),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        duration,
                        style: poppins.copyWith(
                          color: whiteColor,
                          fontWeight: medium,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              text,
              style: poppins.copyWith(
                color: whiteColor,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Image.asset(
                  'assets/icon_star.png',
                  width: 21,
                ),
                SizedBox(width: 2),
                Text(
                  score,
                  style: poppins.copyWith(
                    color: orangeColor,
                    fontWeight: medium,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
