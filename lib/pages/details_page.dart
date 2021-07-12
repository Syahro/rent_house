import 'package:flutter/material.dart';
import 'package:rent_house/theme.dart';
import 'package:rent_house/widget/facility_widget.dart';
import 'package:rent_house/widget/floating_button.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 296,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/house1.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 236),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 30, 24),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Modern House',
                                        style: titleTextStyle.copyWith(
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('KBP Bandung, Indonesia',
                                          style: subTitleTextStyle.copyWith(
                                            fontSize: 14,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: starColor,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: starColor,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: starColor,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: starColor,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        size: 16,
                                        color: starColor,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Listing Agent',
                              style: titleTextStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 30,
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      'assets/images/profile.png',
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'De Kezia',
                                        style: titleTextStyle.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'House Owner',
                                        style: subTitleTextStyle.copyWith(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: lightGreyColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.chat_bubble,
                                          color: purpleColor,
                                          size: 13,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: lightGreyColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.phone,
                                          color: purpleColor,
                                          size: 13,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'House Facilities',
                                  style: titleTextStyle.copyWith(fontSize: 14),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SingleChildScrollView(
                                  padding: EdgeInsets.only(bottom: 10),
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      FacilityWidget(
                                        imageUrl: 'assets/images/facility1.png',
                                        facilityName: 'Swimming Pool',
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FacilityWidget(
                                        imageUrl: 'assets/images/facility2.png',
                                        facilityName: '4 Bedroom',
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      FacilityWidget(
                                        imageUrl: 'assets/images/facility3.png',
                                        facilityName: 'Garage',
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Text(
                              'Description',
                              style: titleTextStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Luxury homes at affordable prices with Bandung\'s\nhilly atmosphere. Located in a strategic location,\nflood free.',
                              style: subTitleTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 80,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 20,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      color: blackColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
