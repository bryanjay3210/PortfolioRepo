import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:timeline_list/timeline_list.dart';

Marker markerContainer(
    {required String title,
    required List<String> details,
    double height = 400,
    double width = 1250,
    required IconData markerIcon}) {
  return Marker(
      icon: Container(
          width: 35,
          height: 35,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
          child: Icon(markerIcon, color: Colors.black, size: 20)),
      position: MarkerPosition.left,
      child: Container(
          decoration: BoxDecoration(
              color: kPrimaryDark, borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                title,
                style: GoogleFonts.robotoSerif(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )
                  .animate()
                  .fadeIn(
                    duration: 1000.ms,
                  )
                  .slideY(begin: 0.2, end: 0, duration: 1000.ms),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: height,
                  width: width,
                  child: ListView(
                    children: [
                      ...details
                          .map((e) => ListTile(
                                leading: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.amber),
                                title: Text(e,
                                    style: GoogleFonts.robotoSerif(
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                              )
                                  .animate()
                                  .fadeIn(
                                    duration: 1000.ms,
                                    delay: 100.ms *
                                        details.indexOf(e), // Staggered
                                  )
                                  .slideY(
                                      begin: 0.2, end: 0, duration: 1000.ms))
                          .toList()
                    ],
                  ),
                ),
              )
            ],
          )));
}
