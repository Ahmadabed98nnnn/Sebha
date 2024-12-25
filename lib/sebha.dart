import 'package:flutter/material.dart';
import 'dart:math';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double _turns = 0.0;
  int _counter = 0;
  int index = 0;
  List<String> tasbeeh = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر',
  ];

  void _rotateImage() {
    setState(() {
      _turns += 1 / 6;
      _counter++;
      if (_counter >= 33) {
        if (index == 3) {
          index = -1;
        }
        index++;
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: InkWell(
        onTap: _rotateImage,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Container(
                width: screenWidth,
                height: screenHeight,
                child: Image.asset(
                  'assets/images/Background.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0.05 * screenHeight,
              child: Image.asset('assets/images/Logo.png'),
            ),
            Positioned(
              top: 0.27 * screenHeight,
              child: const Text(
                'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
                style: TextStyle(
                  fontFamily: 'Janna_LT_Bold',
                  color: Color(0xffFFFFFF),
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              top: 0.45 * screenHeight,
              child: Builder(builder: (context) {
                return AnimatedRotation(
                  turns: _turns,
                  duration: const Duration(seconds: 1),
                  child: Image.asset('assets/images/SebhaBody.png'),
                );
              }),
            ),
            Positioned(
              top: 0.355 * screenHeight,
              child: Padding(
                padding: EdgeInsets.only(left: 0.14 * screenWidth),
                child: Image.asset('assets/images/Mask.png'),
              ),
            ),
            Positioned(
              top: 0.52 * screenHeight,
              child: Container(
                width: 0.4 * screenWidth,
                height: 0.25 * screenHeight,
                alignment: Alignment.center,
                child: Text(
                  '${tasbeeh[index]}',
                  style: const TextStyle(
                    fontFamily: 'Janna_LT_Bold',
                    color: Color(0xffFFFFFF),
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0.71 * screenHeight,
              child: Text(
                '$_counter',
                style: const TextStyle(
                  fontFamily: 'Janna_LT_Bold',
                  color: Color(0xffFFFFFF),
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
