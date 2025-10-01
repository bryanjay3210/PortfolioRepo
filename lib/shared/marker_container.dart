import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:timeline_list/timeline_list.dart';

Marker markerContainer(
    {required String title,
    required List<String> details,
    required IconData markerIcon,
    required BuildContext context}) {
  return Marker(
      icon: Container(
          width: 20,
          height: 20,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
          child: Icon(markerIcon, color: Colors.black, size: 18)),
      position: MarkerPosition.left,
      child: Container(
        width: math.min(
          MediaQuery.of(context).size.width * 0.5,
          600,
        ), // expands horizontally
        decoration: BoxDecoration(
          color: kPrimaryDark,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min, // let height wrap content
          children: [
            Text(
              textAlign: TextAlign.center,
              title,
              style: GoogleFonts.robotoSerif(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )
                .animate()
                .fadeIn(duration: 1000.ms, delay: 2000.ms)
                .slideY(begin: 0.2, end: 0, duration: 1000.ms),
            const SizedBox(height: 20),
            ...details.map(
              (text) => ListTile(
                leading: const Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.amber),
                title: Wrap(children: [
                  Text(
                    text,
                    softWrap: true,
                    style: GoogleFonts.robotoSerif(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ]),
              )
                  .animate(delay: 2200.ms)
                  .fadeIn(
                    duration: 1000.ms,
                    delay: 100.ms * details.indexOf(text), // staggered
                  )
                  .slideY(begin: 0.2, end: 0, duration: 1000.ms),
            ),
          ],
        ),
      )
          .animate()
          .fadeIn(delay: 1000.ms)
          .slideY(begin: 0.2, end: 0, duration: 1000.ms));
}

Animate markerContainerForMobile(
    {required String title,
    required List<String> details,
    required IconData markerIcon,
    required BuildContext context}) {
  return Container(
    width: double.infinity, // expands horizontally
    decoration: BoxDecoration(
      color: kPrimaryDark,
      borderRadius: BorderRadius.circular(10),
    ),
    padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min, // let height wrap content
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Icon(markerIcon),
          ),
        )
            .animate()
            .fadeIn(duration: 1000.ms, delay: 1200.ms)
            .slideY(begin: 1, end: 0, duration: 800.ms),
        const SizedBox(
          height: 10,
        ),
        Text(
          textAlign: TextAlign.center,
          title,
          style: GoogleFonts.robotoSerif(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        )
            .animate(delay: 1500.ms)
            .fadeIn(duration: 800.ms)
            .slideY(begin: 1, end: 0, duration: 1000.ms),
        const SizedBox(height: 20),
        ...details.map(
          (text) => ListTile(
            leading: const Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.amber),
            title: Wrap(children: [
              Text(
                text,
                softWrap: true,
                style: GoogleFonts.robotoSerif(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ]),
          )
              .animate(delay: 1800.ms)
              .fadeIn(
                delay: 200.ms * details.indexOf(text), // staggered
              )
              .slideY(begin: 1, end: 0, duration: 1000.ms),
        ),
      ],
    ),
  ).animate().fade(duration: 1000.milliseconds);
}
