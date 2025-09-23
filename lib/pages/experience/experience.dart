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
    return Scaffold(
      backgroundColor: kPrimaryDark,
      body: mainLayout(
          screenWidth,
          mainContainer(
              deviceType: deviceType,
              context: context,
              title: "My Work Experience",
              childWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Timeline(
                      properties: const TimelineProperties(
                          iconAlignment: MarkerIconAlignment.center,
                          iconSize: 35,
                          timelinePosition: TimelinePosition.start),
                      children: [
                        markerContainer(
                            context: context,
                            markerIcon: Icons.work,
                            title: 'Zylun Philippines Inc. / CoDev',
                            details: [
                              'Flutter Developer / ASP.Net Developer / PHP Developer |  Feb 2023 - July 2025',
                              'Develop and Maintain existing/new project such as Trainee Kiosk, LMS Landing using Laravel, VisitorOrientation Program',
                              'Create new feature and bugfix on existing system written in ASP.Net and PHP',
                              'Collaborate with cross-functional teams to define, design, and ship new features',
                              'Ensure the performance, quality, and responsiveness of applications',
                              'Experienced in Asp.Net Core, Asp.Net MVC, Entity Framework, SQL Server, Flutter, BloC, Angular, React, React Native, Laravel',
                              'Experience in Scrum and Agile methodology'
                            ]),
                        markerContainer(
                            context: context,
                            markerIcon: Icons.work,
                            title: 'My Internet Support LLC',
                            details: [
                              'Full Stack Web/Mobile Developer | Jan 2021 - Jan 2022.',
                              'Develop/Maintain/Deploy apps/website such as NutNull PC Store (E-Commerce Website), Kabrigadahan Website, Kabrigadahan Mobile App and Desktop App.',
                              'Create new feature and bugfix on existing system written in PHP, Laravel and Flutter',
                              'Collaborate with cross-functional teams to define, design, and ship new features',
                              'Experienced using Flutter, Dart, BloC and Provider State Management, REST API, LINQ, Object Mapping, Code First Approach, Angular, React.js, React Native, ASP.NET Zero with ASP.NET Core.',
                              'Experienced in Scrum and Agile methodology.'
                            ]),
                        markerContainer(
                            context: context,
                            markerIcon: Icons.work,
                            title: 'NutNull IT Solutions',
                            details: [
                              'Full Stack Web/Mobile Developer | Jan 2021 - Jan 2022.',
                              'Develop/Maintain/Deploy apps/website such as NutNull PC Store (E-Commerce Website), Kabrigadahan Website, Kabrigadahan Mobile App and Desktop App.',
                              'Create new feature and bugfix on existing system written in ASP.Net Zero, Angular, Microsoft SQL Server, Flutter, React.js, React Native.',
                              'Collaborate with cross-functional teams to define, design, and ship new features',
                              'Experienced using Flutter, Dart, BloC and Provider State Management, REST API, LINQ, Object Mapping, Code First Approach, Angular, React.js, React Native, ASP.NET Zero with ASP.NET Core.'
                            ]),
                        markerContainer(
                            context: context,
                            markerIcon: Icons.work,
                            title: 'Brigada Group of Companies',
                            details: [
                              'Desktop/Web Developer | Jun 2018 - Jan 2021',
                              'Develop/Maintain/Deploy desktop app such as Material Resource Planning System, POS System.',
                              'Create new feature and bugfix on existing system written in ASP.Net, C#, VueJS, Microsoft SQL Server.',
                              'Experienced in ASP.NET Core and MVC architecture, REST API, Stored Procedure, LINQ, Object Mapping, Vue.js and Database First Approach.',
                              'Experienced in Scrum and Agile methodology.'
                            ]),
                      ])
                ],
              ))),
    );
  }
}
