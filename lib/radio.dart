import 'package:flutter/material.dart';
import 'package:sebha/custom_card.dart';

class Radio_Screen extends StatefulWidget {
  const Radio_Screen({super.key});

  @override
  State<Radio_Screen> createState() => _RadioState();
}

class _RadioState extends State<Radio_Screen> {
  int index = 0;
  void _recitersButton() {
    setState(() {
      index = 1;
    });
  }

  void _radioButton() {
    setState(() {
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final List<String> Radios = [
      'Radio Ibrahim Al-Akdar',
      'Radio Al-Qaria Yassen',
      'Radio Ahmed Al-trabulsi',
      'Radio Addokali Mohammad Alalim'
    ];
    final List<String> Reciters = [
      'Ibrahim Al-Akdar',
      'Akram Alalaqmi',
      'Majed Al-Enezi',
      'Malik shaibat Alhamed'
    ];
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: screenWidth,
              height: screenHeight,
              child: Image.asset(
                'assets/images/radio_background.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 0.05 * screenHeight,
              ),
              Center(
                child: Image.asset('assets/images/Logo.png'),
              ),
              Container(
                width: 0.9 * screenWidth,
                height: 0.04618 * screenHeight,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(178, 32, 32, 32),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: _radioButton,
                      child: Container(
                        width: 0.45 * screenWidth,
                        height: 0.04618 * screenHeight,
                        decoration: BoxDecoration(
                          color: index == 0
                              ? const Color(0xffE2BE7F)
                              : const Color.fromARGB(178, 32, 32, 32),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Radio',
                            style: TextStyle(
                              fontFamily: 'Janna_LT_Bold',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: index == 0
                                  ? const Color(0xff202020)
                                  : const Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: _recitersButton,
                      child: Container(
                        width: 0.45 * screenWidth,
                        height: 0.04618 * screenHeight,
                        decoration: BoxDecoration(
                          color: index == 1
                              ? const Color(0xffE2BE7F)
                              : const Color.fromARGB(178, 32, 32, 32),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Reciters',
                            style: TextStyle(
                              fontFamily: 'Janna_LT_Bold',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: index == 1
                                  ? const Color(0xff202020)
                                  : const Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.62 * screenHeight,
                child: ListView(
                  children: [
                    CustomCard(
                        0,
                        'assets/images/Mosque.png',
                        'assets/images/Play.png',
                        'assets/images/Volume.png',
                        index == 0 ? Radios[0] : Reciters[0],
                        screenHeight,
                        screenWidth),
                    SizedBox(
                      height: 0.02 * screenHeight,
                    ),
                    CustomCard(
                        -28,
                        'assets/images/SoundWave.png',
                        'assets/images/Pause.png',
                        'assets/images/Volume_mute.png',
                        index == 0 ? Radios[1] : Reciters[1],
                        screenHeight,
                        screenWidth),
                    SizedBox(
                      height: 0.02 * screenHeight,
                    ),
                    CustomCard(
                        0,
                        'assets/images/Mosque.png',
                        'assets/images/Play.png',
                        'assets/images/Volume.png',
                        index == 0 ? Radios[2] : Reciters[2],
                        screenHeight,
                        screenWidth),
                    SizedBox(
                      height: 0.02 * screenHeight,
                    ),
                    CustomCard(
                        0,
                        'assets/images/Mosque.png',
                        'assets/images/Play.png',
                        'assets/images/Volume.png',
                        index == 0 ? Radios[3] : Reciters[3],
                        screenHeight,
                        screenWidth),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
