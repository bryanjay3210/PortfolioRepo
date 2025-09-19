import 'package:flutter/material.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/shared/main_container.dart';
import 'package:portfolio/shared/main_layout.dart';
import 'package:portfolio/shared/marker_container.dart';
import 'package:timeline_list/timeline_list.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: kPrimaryDark,
        body: mainLayout(
            screenWidth,
            mainContainer(
              context: context,
              title: "My Educational Backgrounds",
              childWidget: Column(
                children: [
                  Timeline(
                      properties: const TimelineProperties(
                          iconAlignment: MarkerIconAlignment.center,
                          iconSize: 35,
                          timelinePosition: TimelinePosition.start),
                      children: [
                        markerContainer(
                            markerIcon: Icons.school,
                            height: 100,
                            title: 'STI College of General Santos City',
                            details: [
                              'Bachelor of Science in Information Technology | 2014 - 2018',
                              'Seminar attended - Technopreneurship Seminar | 2018, Logic Design and Switching Seminar | 2015',
                            ]),
                        markerContainer(
                            markerIcon: Icons.school,
                            height: 60,
                            title: 'Polomolok National High School',
                            details: [
                              'High School Diploma | 2010 - 2014',
                            ]),
                        markerContainer(
                            markerIcon: Icons.school,
                            height: 60,
                            title: 'Dole Cannery Central Elementary School',
                            details: [
                              'Elementary School Diploma | 2004 - 2010',
                            ]),
                      ])
                ],
              ),
            )));
  }
}
