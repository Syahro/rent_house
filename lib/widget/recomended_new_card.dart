import 'package:flutter/material.dart';
import 'package:rent_house/theme.dart';

class RecomendedNewCard extends StatelessWidget {
  final String imageUrl;
  final String houseName;
  final String houseAddress;
  final bool star1, star2, star3, star4, star5;

  RecomendedNewCard({
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Container(
        width: 315,
        height: 100,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imageUrl,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 8,
              ),
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
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    houseAddress,
                    style: subTitleTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
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
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Icon(
                Icons.chevron_right,
                color: blackColor,
                // size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
