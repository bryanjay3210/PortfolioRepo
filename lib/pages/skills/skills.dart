import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/model/skill.dart';
import 'package:portfolio/shared/main_container.dart';
import 'package:portfolio/shared/main_layout.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: kPrimaryDark,
        body: mainLayout(
          screenWidth,
          mainContainer(
              title: "My Skills",
              context: context,
              childWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: 300,
                        child: ListView(
                          children: [...skillsCol1]
                              .map((e) => Column(
                                    children: [
                                      label(
                                          text: e.name, iconPath: e.iconPath!),
                                      const SizedBox(height: 15)
                                    ],
                                  )
                                      .animate()
                                      .fadeIn(
                                        duration: 800.ms,
                                        delay: 100.ms *
                                            skillsCol1.indexOf(e), // Staggered
                                      )
                                      .slideY(
                                          begin: 0.2, end: 0, duration: 800.ms))
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: 300,
                        child: ListView(
                          children: [...skillsCol2]
                              .map((e) => Column(
                                    children: [
                                      label(
                                          text: e.name, iconPath: e.iconPath!),
                                      const SizedBox(height: 15)
                                    ],
                                  )
                                      .animate()
                                      .fadeIn(
                                        duration: 800.ms,
                                        delay: 100.ms *
                                            skillsCol2.indexOf(e), // Staggered
                                      )
                                      .slideY(
                                          begin: 0.2, end: 0, duration: 800.ms))
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: 300,
                        child: ListView(
                          children: [...skillsCol3]
                              .map((e) => Column(
                                    children: [
                                      label(
                                          text: e.name, iconPath: e.iconPath!),
                                      const SizedBox(height: 15)
                                    ],
                                  )
                                      .animate()
                                      .fadeIn(
                                        duration: 800.ms,
                                        delay: 100.ms *
                                            skillsCol3.indexOf(e), // Staggered
                                      )
                                      .slideY(
                                          begin: 0.2, end: 0, duration: 800.ms))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ));
  }

  List<Skill> skillsCol1 = [
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
  ];
  List<Skill> skillsCol2 = [
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
  ];
  List<Skill> skillsCol3 = [
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
