import 'dart:math' as math;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/shared/main_layout.dart';
import 'package:portfolio/shared/type_writer.dart';
import 'package:portfolio/utils/device.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    String deviceType = DeviceUtils.getDeviceType(context);
    return mainLayout(
        screenWidth,
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal:
                  deviceType == "Mobile" || deviceType == "Tablet" ? 10 : 200),
          child: Stack(
            children: [
              Positioned(
                top: deviceType == "Mobile" ? 230 : 200,
                left: deviceType == "Mobile" ? 20 : 10,
                child: SizedBox(
                  height: screenHeight - (screenHeight * 0.4),
                  width: screenWidth - (screenWidth * 0.5),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      typeWriter(
                          context: context,
                          fontColor: Colors.white,
                          text: 'Hi there! \nI\'m Bryan Jay Cuyos'),
                      typeWriter(
                          context: context,
                          fontColor: Colors.white,
                          text: 'I am an experienced software engineer'),
                      typeWriter(
                          context: context,
                          fontColor: Colors.white,
                          text:
                              'looking to help drive your company\'s growth and success'),
                      typeWriter(
                          context: context,
                          fontColor: Colors.white,
                          text:
                              'while further developing my career in software development.'),
                    ],
                    repeatForever: true,
                    pause: const Duration(milliseconds: 2000),
                    displayFullTextOnTap: true,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/profile.png',
                  height: math.min(
                    MediaQuery.of(context).size.width * 0.6,
                    450,
                  ),
                  width: math.min(
                    MediaQuery.of(context).size.width * 0.6,
                    450,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
