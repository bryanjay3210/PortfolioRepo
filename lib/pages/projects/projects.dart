import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/shared/main_container.dart';
import 'package:portfolio/shared/main_layout.dart';
import 'package:portfolio/utils/device.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  final Set<int> _hoveredIndexes = {};

  int crossAxisCount = 3;
  List<ProjectModel> projects = [
    ProjectModel(
        title: 'IPTV',
        imagePath: 'assets/screenshot/iptv/mobile-dashboard-h.png'),
    ProjectModel(
        title: 'Customer Portal',
        imagePath: 'assets/screenshot/customer-portal/login.png'),
    ProjectModel(
        title: 'Field Tech Portal',
        imagePath: 'assets/screenshot/field-tech-portal/dashboard.png'),
    ProjectModel(title: 'Baba', imagePath: 'assets/screenshot/baba/login.png'),
    ProjectModel(
        title: 'Credit Tracker',
        imagePath: 'assets/screenshot/credit-tracker/login.png'),
    ProjectModel(title: 'POS', imagePath: 'assets/screenshot/pos/login.png'),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    String deviceType = DeviceUtils.getDeviceType(context);
    switch (deviceType) {
      case "Mobile":
        crossAxisCount = 1;
        break;
      case "Tablet":
        crossAxisCount = 2;
        break;
      case "Desktop":
        crossAxisCount = 3;
        break;
      default:
        crossAxisCount = 3;
    }
    return mainLayout(
        context: context,
        screenWidth: screenWidth,
        childWidget: mainContainer(
            context: context,
            title: "My Projects",
            deviceType: deviceType,
            childWidget: Scrollbar(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: projects.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                  ),
                  itemBuilder: (context, index) {
                    final isHovered = _hoveredIndexes.contains(index);
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: MouseRegion(
                        onEnter: (_) =>
                            setState(() => _hoveredIndexes.add(index)),
                        onExit: (_) =>
                            setState(() => _hoveredIndexes.remove(index)),
                        child: AnimatedScale(
                          scale: isHovered ? 1.2 : 1.0,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Colors.black
                                        .withOpacity(0.7), // darkness level
                                    BlendMode.darken,
                                  ),
                                  child: Image.asset(
                                    projects[index].imagePath,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromARGB(90, 0, 0, 0),
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.amber, // bottom color
                                      Colors.transparent, // top color
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Text(projects[index].title,
                                        style: GoogleFonts.robotoSerif(
                                            color: Colors.white,
                                            fontSize: math.min(
                                              MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.02,
                                              22, // 👈 max size
                                            ),
                                            fontWeight: FontWeight.w400)),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    )
                        .animate()
                        .fadeIn(
                          duration: 800.ms,
                          delay: 100.ms * index, // Staggered
                        )
                        .slideY(begin: 0.2, end: 0, duration: 800.ms);
                  },
                ),
              ),
            )));
  }
}
