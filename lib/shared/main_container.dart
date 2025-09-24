import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';

Container mainContainer({
  required BuildContext context,
  Widget? childWidget,
  required String title,
  required String deviceType,
}) {
  double titleSize;
  double verticalPadding;
  double topMargin;

  switch (deviceType) {
    case "Mobile":
      titleSize = 22;
      verticalPadding = 20;
      topMargin = 60;
      break;
    case "Tablet":
      titleSize = 28;
      verticalPadding = 25;
      topMargin = 80;
      break;
    case "Desktop":
      titleSize = 35;
      verticalPadding = 30;
      topMargin = 100;
      break;
    default:
      titleSize = 30;
      verticalPadding = 25;
      topMargin = 80;
  }

  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    padding: const EdgeInsets.all(20),
    width: MediaQuery.of(context).size.width * 0.8,
    constraints: BoxConstraints(
        maxWidth: 900, minHeight: MediaQuery.of(context).size.height * 0.9),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: kPrimaryDarkLightAccent,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
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
            .fadeIn(duration: 1000.ms)
            .slideY(begin: 0.2, end: 0, duration: 1000.ms),
        const SizedBox(height: 15),
        childWidget ?? const SizedBox(),
      ],
    ),
  );
}
