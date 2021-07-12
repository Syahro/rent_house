import 'package:flutter/material.dart';
import 'package:rent_house/theme.dart';
import 'package:rent_house/widget/recomended_card.dart';
import 'package:rent_house/widget/recomended_new_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: defaultMargin,
                    horizontal: defaultMargin,
                  ),
                  child: Image.asset(
                    'assets/icon/Vector.png',
                    width: 18,
                    height: 14,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Text(
                    'Find Your\nPerfect Place!',
                    style: titleTextStyle.copyWith(
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 55,
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  width:
                      MediaQuery.of(context).size.width - (2 * defaultMargin),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(1, 1),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Find your dream home',
                          style: subTitleTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        Container(
                          width: 39,
                          height: 39,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.search,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: defaultMargin,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        RecomendedCard(
                          imageUrl: 'assets/images/house1.png',
                          houseName: 'Modern House',
                          houseAddress: 'Bandung',
                          star1: true,
                          star2: true,
                          star3: true,
                          star4: true,
                          star5: false,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        RecomendedCard(
                          imageUrl: 'assets/images/house2.png',
                          houseName: 'White House',
                          houseAddress: 'Jakarta',
                          star1: true,
                          star2: true,
                          star3: true,
                          star4: true,
                          star5: true,
                        ),
                        SizedBox(
                          width: defaultMargin,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: defaultMargin,
                  ),
                  child: Text(
                    'Recommended For You',
                    style: titleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                RecomendedNewCard(
                  imageUrl: 'assets/images/recomend1.png',
                  houseName: 'Wooden House',
                  houseAddress: 'Bandung',
                  star1: true,
                  star2: true,
                  star3: true,
                  star4: true,
                  star5: false,
                ),
                SizedBox(
                  height: 16,
                ),
                RecomendedNewCard(
                  imageUrl: 'assets/images/recomend2.png',
                  houseName: 'Triangle House',
                  houseAddress: 'Bogor',
                  star1: true,
                  star2: true,
                  star3: true,
                  star4: true,
                  star5: false,
                ),
                SizedBox(
                  height: 16,
                ),
                RecomendedNewCard(
                  imageUrl: 'assets/images/recomed3.png',
                  houseName: 'Hill House',
                  houseAddress: 'Makasar',
                  star1: true,
                  star2: true,
                  star3: true,
                  star4: false,
                  star5: false,
                ),
                SizedBox(
                  height: defaultMargin,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
