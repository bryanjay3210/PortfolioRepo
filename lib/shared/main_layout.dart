import 'package:flutter/material.dart';
import 'package:portfolio/constant/constant.dart';
import 'package:portfolio/shared/nav_bar.dart';

Scaffold mainLayout(double screenWidth, Widget? childWidget) {
  return Scaffold(
    body: Stack(children: [
      Container(
        color: kPrimaryDark,
      ),
      Positioned(
          left: 0,
          top: 0,
          child: Container(
            height: 200,
            width: screenWidth - 150,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15)),
              color: Colors.amber,
            ),
          )),
      const NavBar(),
      Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 200,
            width: screenWidth - 150,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
              color: Colors.amber,
            ),
          )),
      childWidget ?? Container(),
    ]),
  );
}
