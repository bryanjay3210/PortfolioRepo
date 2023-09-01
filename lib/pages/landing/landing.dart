import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';

import '../nav_bar.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: kPrimary,
                )),
            SizedBox(
              width: 450,
              child: Container(
                color: Colors.amber,
              ),
            )
          ],
        ),
        const NavBar(),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 600,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Hi Everyone!',
                      textStyle: GoogleFonts.robotoSerif(
                          color: Colors.white,
                          fontSize: 80,
                          fontWeight: FontWeight.w400),
                      speed: const Duration(milliseconds: 200),
                    ),
                    TypewriterAnimatedText(
                      'I\'m Bryan Jay Cuyos ',
                      textStyle: GoogleFonts.robotoSerif(
                          color: Colors.white,
                          fontSize: 80,
                          fontWeight: FontWeight.w400),
                      speed: const Duration(milliseconds: 200),
                    ),
                    TypewriterAnimatedText(
                      'A Software Engineer',
                      textStyle: GoogleFonts.robotoSerif(
                          color: Colors.white,
                          fontSize: 80,
                          fontWeight: FontWeight.w400),
                      speed: const Duration(milliseconds: 200),
                    )
                  ],
                  repeatForever: true,
                  pause: const Duration(milliseconds: 2000),
                  displayFullTextOnTap: true,
                ),
              ),
              OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'HIRE ME!',
                      style: GoogleFonts.robotoSlab(
                          color: Colors.amber,
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                  ))
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 150,
          child: Image.asset(
            'assets/profile.png',
            height: 500,
            width: 500,
          ),
        )
      ]),
    );
  }
}
