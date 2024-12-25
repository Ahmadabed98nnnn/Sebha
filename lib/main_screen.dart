import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sebha/Hadith.dart';
import 'package:sebha/Quran.dart';
import 'package:sebha/radio.dart';
import 'package:sebha/sebha.dart';
import 'package:sebha/time.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 2;
  Widget screenWidget = const Sebha();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: screenWidget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xffE2BE7F),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              screenWidget = const Quran();
            } else if (_currentIndex == 1) {
              screenWidget = const Hadith();
            } else if (_currentIndex == 2) {
              screenWidget = const Sebha();
            } else if (_currentIndex == 3) {
              screenWidget = const Radio_Screen();
            } else {
              screenWidget = const Time();
            }
          });
        },
        selectedItemColor: const Color(0xffFFFFFF),
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Janna_LT_Bold',
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Quran.svg'),
            activeIcon: Container(
              width: 0.15 * screenWidth,
              decoration: const BoxDecoration(
                color: Color.fromARGB(178, 32, 32, 32),
                borderRadius: BorderRadius.all(
                  Radius.circular(66),
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                'assets/images/Quran.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Hadith.svg'),
            activeIcon: Container(
              width: 0.15 * screenWidth,
              decoration: const BoxDecoration(
                color: Color.fromARGB(178, 32, 32, 32),
                borderRadius: BorderRadius.all(
                  Radius.circular(66),
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                'assets/images/Hadith.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Necklace.svg'),
            activeIcon: Container(
              width: 0.15 * screenWidth,
              height: 0.04 * screenHeight,
              decoration: const BoxDecoration(
                color: Color.fromARGB(178, 32, 32, 32),
                borderRadius: BorderRadius.all(
                  Radius.circular(66),
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: FractionallySizedBox(
                heightFactor: 1.4,
                widthFactor: 1.4,
                child: SvgPicture.asset(
                  'assets/images/Necklace.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Radio.svg'),
            activeIcon: Container(
              width: 0.15 * screenWidth,
              height: 0.04 * screenHeight,
              decoration: const BoxDecoration(
                color: Color.fromARGB(178, 32, 32, 32),
                borderRadius: BorderRadius.all(
                  Radius.circular(66),
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: FractionallySizedBox(
                heightFactor: 1.4,
                widthFactor: 1.4,
                child: SvgPicture.asset(
                  'assets/images/Radio.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Time.svg'),
            activeIcon: Container(
              width: 0.15 * screenWidth,
              height: 0.04 * screenHeight,
              decoration: const BoxDecoration(
                color: Color.fromARGB(178, 32, 32, 32),
                borderRadius: BorderRadius.all(
                  Radius.circular(66),
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: FractionallySizedBox(
                widthFactor: 1.2,
                heightFactor: 1.2,
                child: SvgPicture.asset(
                  'assets/images/Time.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
