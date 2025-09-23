import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/model/skill.dart';
import 'package:portfolio/shared/main_container.dart';
import 'package:portfolio/shared/main_layout.dart';
import 'package:portfolio/utils/device.dart';
import 'dart:math' as math;

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    String deviceType = DeviceUtils.getDeviceType(context);
    double iconHeight = 70;
    double iconWidth = 70;
    switch (deviceType) {
      case "Mobile":
        iconHeight = 40;
        iconWidth = 40;
        break;
      case "Tablet":
        iconHeight = 60;
        iconWidth = 60;
        break;
      case "Desktop":
        iconHeight = 70;
        iconWidth = 70;
        break;
      default:
        iconHeight = 70;
        iconWidth = 70;
    }
    return Scaffold(
        backgroundColor: kPrimaryDark,
        body: mainLayout(
          screenWidth,
          mainContainer(
            deviceType: deviceType,
            title: "My Skills",
            context: context,
            childWidget: SizedBox(
              height: 600,
              width: 800,
              child: Scrollbar(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: deviceType == "Mobile" ? 2 : 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: [...skills]
                      .map((skillset) => Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(48, 129, 129, 128),
                                borderRadius: BorderRadius.circular(10)),
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  skillset.iconPath!,
                                  height: iconHeight,
                                  width: iconWidth,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  textAlign: TextAlign.center,
                                  skillset.name,
                                  style: GoogleFonts.robotoSerif(
                                      color: Colors.white,
                                      fontSize: math.min(
                                        MediaQuery.of(context).size.width *
                                            0.02,
                                        24, // 👈 max size
                                      ),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                              .animate()
                              .fadeIn(
                                duration: 800.ms,
                                delay: 100.ms *
                                    skills.indexOf(skillset), // Staggered
                              )
                              .slideY(begin: 0.2, end: 0, duration: 800.ms))
                      .toList(),
                ),
              ),
            ),
          ),
        ));
  }

  List<Skill> skills = [
    Skill(name: 'C Sharp', iconPath: 'assets/skills_icon/csharp.png'),
    Skill(name: 'ASP.Net Core', iconPath: 'assets/skills_icon/aspcore.png'),
    Skill(name: 'ASP.Net MVC', iconPath: 'assets/skills_icon/aspmvc.png'),
    Skill(name: 'ASP.Net Zero', iconPath: 'assets/skills_icon/aspzero.png'),
    Skill(name: 'Flutter', iconPath: 'assets/skills_icon/flutter.png'),
    Skill(name: 'Firebase', iconPath: 'assets/skills_icon/firebase.png'),
    Skill(name: 'Supabase', iconPath: 'assets/skills_icon/supabase.png'),
    Skill(name: 'Hive', iconPath: 'assets/skills_icon/hive.png'),
    Skill(name: 'Laravel', iconPath: 'assets/skills_icon/laravel.png'),
    Skill(name: 'PHP', iconPath: 'assets/skills_icon/php.png'),
    Skill(name: 'Angular', iconPath: 'assets/skills_icon/angular.png'),
    Skill(name: 'VueJS', iconPath: 'assets/skills_icon/vue.png'),
    Skill(name: 'React', iconPath: 'assets/skills_icon/react.png'),
    Skill(name: 'React Native', iconPath: 'assets/skills_icon/react.png'),
    Skill(name: 'NodeJS', iconPath: 'assets/skills_icon/node.png'),
    Skill(name: 'MySQL', iconPath: 'assets/skills_icon/mysql.png'),
    Skill(
        name: 'Microsoft SQL Server',
        iconPath: 'assets/skills_icon/sqlserver.png'),
    Skill(name: 'Git', iconPath: 'assets/skills_icon/git.png'),
    Skill(name: 'HTML5', iconPath: 'assets/skills_icon/html.png'),
    Skill(name: 'CSS3', iconPath: 'assets/skills_icon/css.png'),
    Skill(name: 'Javascript', iconPath: 'assets/skills_icon/javascript.png'),
    Skill(name: 'Bootstrap', iconPath: 'assets/skills_icon/bootstrap.png'),
    Skill(name: 'JSON', iconPath: 'assets/skills_icon/json.png'),
  ];

  Row label(
      {required String text,
      required String iconPath,
      double height = 40,
      double width = 40}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          iconPath,
          height: height,
          width: width,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: GoogleFonts.robotoSerif(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
