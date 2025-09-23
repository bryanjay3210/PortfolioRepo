import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';

Center mainContainer(
    {required BuildContext context,
    Widget? childWidget,
    required String title,
    required String deviceType}) {
  double titleSize = 0;
  switch (deviceType) {
    case "Mobile":
      titleSize = 25;
      break;
    case "Tablet":
      titleSize = 30;
      break;
    case "Desktop":
      titleSize = 35;
      break;
    default:
      titleSize = 35;
  }
  return Center(
    child: Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // color: const Color(0xff37353E),
          color: kPrimaryDarkLightAccent),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoSerif(
              color: Colors.white,
              fontSize: titleSize,
              fontWeight: FontWeight.bold,
            ),
          )
              .animate()
              .fadeIn(
                duration: 1000.ms,
              )
              .slideY(begin: 0.2, end: 0, duration: 1000.ms),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: childWidget ?? Container(),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
