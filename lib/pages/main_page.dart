import 'package:flutter/material.dart';
import 'package:pie_cake/theme.dart';
import 'package:pie_cake/widgets/popular_card.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/image_profile.png',
              width: 60,
            ),
            SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hello, ',
                        style: poppins.copyWith(
                            fontWeight: medium,
                            fontSize: 20,
                            color: whiteColor),
                      ),
                      Text(
                        'Shadam ',
                        style: poppins.copyWith(
                            fontWeight: medium,
                            fontSize: 20,
                            color: orangeColor),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Text(
                    'What Pie you want to try today?',
                    style: poppins.copyWith(
                      color: greyColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        height: 50,
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          top: 45,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 18,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgGreyColor,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                style: poppins.copyWith(color: greyColor),
                decoration: InputDecoration.collapsed(
                  hintText: 'Find your favorite Pie',
                  hintStyle: poppins.copyWith(
                    color: greyColor,
                  ),
                ),
              ),
            ),
            Icon(
              Icons.search,
              color: greyColor,
            ),
          ],
        ),
      );
    }

    Widget categories({imageUrl, text, index}) {
      return GestureDetector(
        onTap: () {
          setState(() {
            categoryIndex = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 12,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: categoryIndex == index ? orangeColor : bgGreyColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  imageUrl,
                  width: 45,
                  color: categoryIndex == index ? bgDarkGreyColor : orangeColor,
                ),
              ),
              SizedBox(height: 12),
              Text(
                text,
                style: poppins.copyWith(
                  color: greyColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(bottom: 70),
        width: double.infinity,
        decoration: BoxDecoration(
          color: bgDarkGreyColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category Title
            Container(
              margin: EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: Text(
                'Category',
                style: poppins.copyWith(
                  color: whiteColor,
                  fontWeight: semibold,
                  fontSize: 20,
                ),
              ),
            ),
            // Category
            Container(
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  categories(
                    imageUrl: 'assets/icon_salty_pie.png',
                    text: 'Salty Pie',
                    index: 0,
                  ),
                  categories(
                    imageUrl: 'assets/icon_sweet_pie.png',
                    text: 'Sweet Pie',
                    index: 1,
                  ),
                  categories(
                    imageUrl: 'assets/icon_fruit_pie.png',
                    text: 'Fruit Pie',
                    index: 2,
                  ),
                  categories(
                    imageUrl: 'assets/icon_drinks.png',
                    text: 'Drinks',
                    index: 3,
                  ),
                ],
              ),
            ),
            //  Popular Title
            Container(
              margin: EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: Text(
                'Popular Sweet Pie',
                style: poppins.copyWith(
                  color: whiteColor,
                  fontWeight: semibold,
                  fontSize: 20,
                ),
              ),
            ),
            // Popular Card
            Container(
              margin: EdgeInsets.only(
                top: 12,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    PopularCard(
                      imageUrl: 'assets/image_popular_1.png',
                      duration: '20-30 Min',
                      text: 'Cream Sweet Pie',
                      score: '4.5',
                    ),
                    PopularCard(
                      imageUrl: 'assets/image_popular_2.png',
                      duration: '30-45 Min',
                      text: 'DoubleJumbo Pie',
                      score: '4.8',
                    ),
                    PopularCard(
                      imageUrl: 'assets/image_popular_3.png',
                      duration: '10-25 Min',
                      text: 'Fruit’s Small Pie',
                      score: '4.5',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget customBottomNav() {
      return BottomNavigationBar(
        backgroundColor: bgGreyColor,
        unselectedItemColor: greyColor,
        selectedItemColor: orangeColor,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: bgGreyColor,
            icon: Image.asset(
              'assets/icon_nav_home.png',
              width: 20,
              color: currentIndex == 0 ? orangeColor : greyColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: bgBlackColor,
            icon: Image.asset(
              'assets/icon_nav_cart.png',
              width: 20,
              color: currentIndex == 1 ? orangeColor : greyColor,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: bgGreyColor,
            icon: Image.asset(
              'assets/icon_nav_love.png',
              width: 20,
              color: currentIndex == 2 ? orangeColor : greyColor,
            ),
            label: 'Love',
          ),
          BottomNavigationBarItem(
            backgroundColor: bgBlackColor,
            icon: Image.asset(
              'assets/icon_nav_profile.png',
              width: 20,
              color: currentIndex == 3 ? orangeColor : greyColor,
            ),
            label: 'Profile',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgBlackColor,
      bottomNavigationBar: SizedBox(
        height: 85,
        child: customBottomNav(),
      ),
      body: ListView(
        children: [
          header(),
          searchBar(),
          content(),
        ],
      ),
    );
  }
}
