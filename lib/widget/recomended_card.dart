import 'package:flutter/material.dart';
import 'package:rent_house/pages/details_page.dart';
import 'package:rent_house/theme.dart';

class RecomendedCard extends StatelessWidget {
  final String imageUrl;
  final String houseName;
  final String houseAddress;
  final bool star1, star2, star3, star4, star5;

  RecomendedCard({
    this.imageUrl,
    this.houseName,
    this.houseAddress,
    this.star1,
    this.star2,
    this.star3,
    this.star4,
    this.star5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 231,
      height: 209,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailsPage();
          }));
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                imageUrl,
                height: 150,
                width: 231,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 59,
              width: 231,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          houseName,
                          style: titleTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          houseAddress,
                          style: subTitleTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: (star1) ? starColor : greyColor,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: (star2) ? starColor : greyColor,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: (star3) ? starColor : greyColor,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: (star4) ? starColor : greyColor,
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: (star5) ? starColor : greyColor,
                          size: 12,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
