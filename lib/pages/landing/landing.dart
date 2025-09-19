import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
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
    return mainLayout(
        screenWidth,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 200),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 300,
                      width: screenWidth - (screenWidth * 0.5),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          typeWriter(
                              fontColor: Colors.white,
                              text: 'Hi there! \nI\'m Bryan Jay Cuyos'),
                          typeWriter(
                              fontColor: Colors.white,
                              text: 'I am an experienced software engineer'),
                          typeWriter(
                              fontColor: Colors.white,
                              text:
                                  'looking to help drive your company\'s growth and success'),
                          typeWriter(
                              fontColor: Colors.white,
                              text:
                                  'while further developing my career in software development.'),
                        ],
                        repeatForever: true,
                        pause: const Duration(milliseconds: 2000),
                        displayFullTextOnTap: true,
                      ),
                    ),
                    // OutlinedButton(
                    //     onPressed: () {},
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(10),
                    //       child: Text(
                    //         'HIRE ME!',
                    //         style: GoogleFonts.robotoSlab(
                    //             color: Colors.amber,
                    //             fontSize: 30,
                    //             fontWeight: FontWeight.w400),
                    //       ),
                    //     ))
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/profile.png',
                  height: 500,
                  width: 500,
                ),
              ),
            ],
          ),
        ));
  }
}
