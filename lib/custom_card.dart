import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(this.bottomPlacement, this.background, this.icon1,
      this.icon2, this.text, this.screenHeight, this.screenWidth,
      {super.key});
  final double screenHeight;
  final double screenWidth;
  final String text;
  final String icon1;
  final String icon2;
  final String background;
  final double bottomPlacement;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Container(
              width: double.infinity,
              height: 0.15357 * screenHeight,
              decoration: const BoxDecoration(
                color: Color(0xffE2BE7F),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: bottomPlacement,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                background,
              ),
            ),
          ),
          Positioned(
              top: 0,
              child: Column(
                children: [
                  SizedBox(height: 0.02 * screenHeight),
                  Center(
                    child: Text(
                      text,
                      style: const TextStyle(
                        fontFamily: 'Janna_LT_Bold',
                        color: Color(0xff202020),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 0.04 * screenHeight),
                  Row(
                    children: [
                      SizedBox(width: 0.15 * screenWidth),
                      Image.asset(icon1),
                      SizedBox(width: 0.06 * screenWidth),
                      Image.asset(icon2),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
