import 'package:flutter/material.dart';
import 'package:pie_cake/theme.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget orderImage() {
      return Container(
        child: Image.asset(
          'assets/image_chef.png',
          width: 340,
          height: 370,
          fit: BoxFit.fitHeight,
        ),
      );
    }

    Widget order() {
      return Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(31),
          ),
          color: bgGreyColor,
        ),
        child: Column(
          children: [
            // title
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                'PieLove Anetto',
                style: poppins.copyWith(
                  color: whiteColor,
                  fontSize: 24,
                  fontWeight: semibold,
                ),
              ),
            ),
            //  description
            Container(
              margin: EdgeInsets.only(
                top: 12,
                right: 68,
                left: 68,
              ),
              child: Text(
                'Let\'s taste the Pie Cake made by Chef Bimo Semesta',
                textAlign: TextAlign.center,
                style: poppins.copyWith(
                  color: greyColor,
                  fontSize: 16,
                ),
              ),
            ),
            // button
            Container(
              margin: EdgeInsets.only(
                top: 50,
                left: 50,
                right: 50,
              ),
              height: 55,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: orangeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Text(
                  'Let\'s Order',
                  style: poppins.copyWith(
                    fontWeight: semibold,
                    fontSize: 20,
                    color: blackColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }


    return Scaffold(
      backgroundColor: bgBlackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          orderImage(),
          order(),
        ],
      ),
    );
  }
}
