import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          children: [
            Text(
              'My Portfolio',
              style: GoogleFonts.robotoSerif(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Skills',
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'About',
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Contact',
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                )),
          ],
        ),
      ),
    );
  }
}
