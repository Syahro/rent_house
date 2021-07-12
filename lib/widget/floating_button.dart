import 'package:flutter/material.dart';
import 'package:rent_house/theme.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: whiteColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Price\n',
                      style: subTitleTextStyle.copyWith(fontSize: 12),
                      children: [
                        TextSpan(
                          text: '\$7,500',
                          style: titleTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: purpleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              color: whiteColor,
              child: Container(
                width: 196,
                height: 50,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Book Now',
                    style: titleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
