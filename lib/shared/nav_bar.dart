import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/shared/nav_button.dart';
import 'package:portfolio/routes/route_constants.dart';
import 'package:portfolio/utils/device.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    String deviceType = DeviceUtils.getDeviceType(context);
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal:
                deviceType == "Mobile" || deviceType == "Tablet" ? 20 : 200),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => context.pushReplacementNamed(RouteConstants.landing),
              child: Text(
                'Portfolio',
                style: GoogleFonts.robotoSerif(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            screenWidth < 1427
                ? IconButton.outlined(
                    onPressed: () async {
                      final selected = await showMenu<String>(
                        color: kPrimaryDarkLightAccent,
                        context: context,
                        position: RelativeRect.fromLTRB(
                            100,
                            50,
                            deviceType == "Mobile" || deviceType == "Tablet"
                                ? 10
                                : 80,
                            0),
                        items: [
                          popupTile(
                            title: 'Home',
                            icon: Icons.home,
                            onTap: () => context
                                .pushReplacementNamed(RouteConstants.landing),
                          ),
                          popupTile(
                            title: 'Skills',
                            icon: Icons.list,
                            onTap: () => context
                                .pushReplacementNamed(RouteConstants.skills),
                          ),
                          popupTile(
                            title: 'Work Experience',
                            icon: Icons.work,
                            onTap: () => context.pushReplacementNamed(
                                RouteConstants.experience),
                          ),
                          popupTile(
                            title: 'Education',
                            icon: Icons.school,
                            onTap: () => context
                                .pushReplacementNamed(RouteConstants.education),
                          ),
                          popupTile(
                            title: 'Projects',
                            icon: Icons.camera,
                            onTap: () => context
                                .pushReplacementNamed(RouteConstants.projects),
                          ),
                          popupTile(
                            title: 'Contacts',
                            icon: Icons.contact_mail,
                            onTap: () => context
                                .pushReplacementNamed(RouteConstants.contacts),
                          ),
                        ],
                      );

                      if (selected != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("You selected: $selected")),
                        );
                      }
                    },
                    icon: FaIcon(FontAwesomeIcons.bars,
                        color: deviceType == "Mobile" || deviceType == "Tablet"
                            ? Colors.white
                            : Colors.black))
                : Row(
                    children: [
                      navButton(
                          context,
                          'Home',
                          () => context
                              .pushReplacementNamed(RouteConstants.landing),
                          const Icon(Icons.home)),
                      const SizedBox(width: 10),
                      navButton(
                          context,
                          'Skills',
                          () => context
                              .pushReplacementNamed(RouteConstants.skills),
                          const Icon(Icons.list)),
                      const SizedBox(width: 10),
                      navButton(
                          context,
                          'Work Experience',
                          () => context
                              .pushReplacementNamed(RouteConstants.experience),
                          const Icon(Icons.work)),
                      const SizedBox(width: 10),
                      navButton(
                          context,
                          'Education',
                          () => context
                              .pushReplacementNamed(RouteConstants.education),
                          const Icon(Icons.school)),
                      const SizedBox(width: 10),
                      navButton(
                          context,
                          'Projects',
                          () => context
                              .pushReplacementNamed(RouteConstants.projects),
                          const Icon(Icons.camera)),
                      const SizedBox(width: 10),
                      navButton(
                          context,
                          'Contacts',
                          () => context
                              .pushReplacementNamed(RouteConstants.contacts),
                          const Icon(Icons.contact_mail)),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  PopupMenuItem<String> popupTile(
      {required String title, IconData? icon, required VoidCallback onTap}) {
    return PopupMenuItem(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: Colors.amber),
          const SizedBox(width: 10),
          Text(
            title,
            style: GoogleFonts.robotoSerif(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
