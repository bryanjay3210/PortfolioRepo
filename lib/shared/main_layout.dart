import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/shared/nav_bar.dart';

Scaffold mainLayout({
  required double screenWidth,
  required BuildContext context,
  Widget? childWidget,
}) {
  return Scaffold(
    backgroundColor: kPrimaryDark,
    body: Container(
      constraints:
          BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            // Top-left accent
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                height: 200,
                width: screenWidth - 150,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(15)),
                  color: Colors.amber,
                ),
              ),
            ),

            // Bottom-right accent
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 150,
                width: screenWidth - 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
                  color: Colors.amber,
                ),
              ),
            ),

            // Main content (NavBar + body)
            Column(
              children: [
                const NavBar(), // Navbar stays on top
                childWidget ?? Container(),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
