import 'package:flutter/material.dart';
import 'package:portfolio/shared/main_container.dart';
import 'package:portfolio/shared/main_layout.dart';
import 'package:portfolio/shared/marker_container.dart';
import 'package:portfolio/utils/device.dart';
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
    String deviceType = DeviceUtils.getDeviceType(context);
    return mainLayout(
        context: context,
        screenWidth: screenWidth,
        childWidget: mainContainer(
          deviceType: deviceType,
          context: context,
          title: "My Educational Backgrounds",
          childWidget: deviceType == "Mobile"
              ? Column(
                  children: [
                    markerContainerForMobile(
                        context: context,
                        markerIcon: Icons.school,
                        title: 'STI College of General Santos City',
                        details: [
                          'Bachelor of Science in Information Technology | 2014 - 2018',
                          'Seminar attended - Technopreneurship Seminar | 2018, Logic Design and Switching Seminar | 2015',
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    markerContainerForMobile(
                        context: context,
                        markerIcon: Icons.school,
                        title: 'Polomolok National High School',
                        details: [
                          'High School Diploma | 2010 - 2014',
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    markerContainerForMobile(
                        context: context,
                        markerIcon: Icons.school,
                        title: 'Dole Cannery Central Elementary School',
                        details: [
                          'Elementary School Diploma | 2004 - 2010',
                        ]),
                  ],
                )
              : Column(
                  children: [
                    SizedBox(
                      width: 700,
                      child: Timeline(
                          properties: const TimelineProperties(
                              iconAlignment: MarkerIconAlignment.center,
                              iconSize: 35,
                              timelinePosition: TimelinePosition.start),
                          children: [
                            markerContainer(
                                context: context,
                                markerIcon: Icons.school,
                                title: 'STI College of General Santos City',
                                details: [
                                  'Bachelor of Science in Information Technology | 2014 - 2018',
                                  'Seminar attended - Technopreneurship Seminar | 2018, Logic Design and Switching Seminar | 2015',
                                ]),
                            markerContainer(
                                context: context,
                                markerIcon: Icons.school,
                                title: 'Polomolok National High School',
                                details: [
                                  'High School Diploma | 2010 - 2014',
                                ]),
                            markerContainer(
                                context: context,
                                markerIcon: Icons.school,
                                title: 'Dole Cannery Central Elementary School',
                                details: [
                                  'Elementary School Diploma | 2004 - 2010',
                                ]),
                          ]),
                    )
                  ],
                ),
        ));
  }
}
