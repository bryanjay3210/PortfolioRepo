import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/shared/nav_button.dart';
import 'package:portfolio/routes/route_constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200),
        child: Row(
          children: [
            Text(
              'Portfolio',
              style: GoogleFonts.robotoSerif(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            navButton(
                context,
                'Home',
                () => context.pushReplacementNamed(RouteConstants.landing),
                const Icon(Icons.home)),
            const SizedBox(width: 10),
            navButton(
                context,
                'Skills',
                () => context.pushReplacementNamed(RouteConstants.skills),
                const Icon(Icons.list)),
            const SizedBox(width: 10),
            navButton(
                context,
                'Work Experience',
                () => context.pushReplacementNamed(RouteConstants.experience),
                const Icon(Icons.work)),
            const SizedBox(width: 10),
            navButton(
                context,
                'Education',
                () => context.pushReplacementNamed(RouteConstants.education),
                const Icon(Icons.school)),
            const SizedBox(width: 10),
            navButton(
                context,
                'Projects',
                () => context.pushReplacementNamed(RouteConstants.projects),
                const Icon(Icons.camera)),
            const SizedBox(width: 10),
            navButton(
                context,
                'Contacts',
                () => context.pushReplacementNamed(RouteConstants.contacts),
                const Icon(Icons.contact_mail)),
          ],
        ),
      ),
    );
  }
}
