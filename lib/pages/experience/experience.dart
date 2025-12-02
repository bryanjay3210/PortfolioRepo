import 'package:flutter/material.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/shared/main_container.dart';
import 'package:portfolio/shared/main_layout.dart';
import 'package:portfolio/shared/marker_container.dart';
import 'package:portfolio/utils/device.dart';
import 'package:timeline_list/timeline_list.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
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
            title: "My Work Experience",
            childWidget: deviceType == "Mobile"
                ? Column(
                    children: [
                      markerContainerForMobile(
                          context: context,
                          markerIcon: Icons.work,
                          title: 'Zylun Philippines Inc. / CoDev',
                          details: zylunDetails),
                      const SizedBox(
                        height: 10,
                      ),
                      markerContainerForMobile(
                          context: context,
                          markerIcon: Icons.work,
                          title: 'My Internet Support LLC',
                          details: misDetails),
                      const SizedBox(
                        height: 10,
                      ),
                      markerContainerForMobile(
                          context: context,
                          markerIcon: Icons.work,
                          title: 'NutNull IT Solutions',
                          details: nutNullDetails),
                      const SizedBox(
                        height: 10,
                      ),
                      markerContainerForMobile(
                          context: context,
                          markerIcon: Icons.work,
                          title: 'Brigada Group of Companies',
                          details: brigadaDetails)
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
                                  markerIcon: Icons.work,
                                  title: 'Zylun Philippines Inc. / CoDev',
                                  details: zylunDetails),
                              markerContainer(
                                  context: context,
                                  markerIcon: Icons.work,
                                  title: 'My Internet Support LLC',
                                  details: misDetails),
                              markerContainer(
                                  context: context,
                                  markerIcon: Icons.work,
                                  title: 'NutNull IT Solutions',
                                  details: nutNullDetails),
                              markerContainer(
                                  context: context,
                                  markerIcon: Icons.work,
                                  title: 'Brigada Group of Companies',
                                  details: brigadaDetails),
                            ]),
                      )
                    ],
                  )));
  }
}
