import 'dart:math' as math;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/shared/main_layout.dart';
import 'package:portfolio/shared/type_writer.dart';

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
    return mainLayout(
        context: context,
        screenWidth: screenWidth,
        childWidget: SizedBox(
          width: screenWidth * .8,
          height: screenHeight,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 150,
                child: SizedBox(
                  width: screenWidth * .5,
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
                    400,
                  ),
                  width: math.min(
                    MediaQuery.of(context).size.width * 0.6,
                    400,
                  ),
                )
                    .animate(delay: 500.ms)
                    .fadeIn(duration: 1000.ms)
                    .slideX(begin: 0.2, end: 0, duration: 1000.ms),
              )
            ],
          ),
        ));
  }
}
