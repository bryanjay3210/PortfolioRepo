import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/routes/route_constants.dart';

Animate mainContainer(
    {required BuildContext context,
    Widget? childWidget,
    required String title,
    required String deviceType,
    bool? hasClosedButton = false}) {
  double titleSize;

  switch (deviceType) {
    case "Mobile":
      titleSize = 22;
      break;
    case "Tablet":
      titleSize = 28;
      break;
    case "Desktop":
      titleSize = 35;
      break;
    default:
      titleSize = 30;
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
        Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoSerif(
                    color: Colors.white,
                    fontSize: titleSize,
                    fontWeight: FontWeight.bold,
                  ),
                )
                    .animate(delay: 1000.ms)
                    .fadeIn(duration: 1000.ms)
                    .slideY(begin: 0.2, end: 0, duration: 1000.ms),
              ),
            ),
            hasClosedButton!
                ? IconButton(
                    onPressed: () =>
                        context.pushReplacementNamed(RouteConstants.projects),
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ))
                : const SizedBox(),
          ],
        ),
        const SizedBox(height: 15),
        childWidget ?? const SizedBox(),
      ],
    ),
  ).animate().fadeIn().slideY(begin: 0.2, end: 0, duration: 1000.ms);
}
