import 'dart:math' as math;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TypewriterAnimatedText typeWriter(
    {required Color fontColor,
    required String text,
    required BuildContext context}) {
  return TypewriterAnimatedText(
    text,
    textStyle: GoogleFonts.robotoSerif(
        color: fontColor,
        fontSize: math.min(
          MediaQuery.of(context).size.width * 0.07,
          70,
        ),
        fontWeight: FontWeight.w400),
    speed: const Duration(milliseconds: 100),
  );
}
