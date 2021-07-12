import 'package:flutter/material.dart';
import 'package:rent_house/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Image.asset(
                'assets/icon/Vector.png',
                width: 18,
                height: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
