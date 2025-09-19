import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/constant.dart';

SizedBox navButton(
    BuildContext context, String label, VoidCallback onPressed, Icon icon) {
  return SizedBox(
    height: 40,
    child: OutlinedButton.icon(
      icon: icon,
      onPressed: onPressed,
      style: ButtonStyle(
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return const BorderSide(color: Colors.white); // hover border
            }
            return const BorderSide(color: Colors.black); // default border
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.white; // hover text + icon color
            }
            return Colors.black; // default text + icon color
          },
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return kSecondary; // hover background
            }
            return Colors.transparent; // default background
          },
        ),
        iconColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.white; // hover background
            }
            return Colors.black; // default background
          },
        ),
      ),
      label: Text(
        label,
        style: GoogleFonts.robotoSerif(fontSize: 15),
      ),
    ),
  );
}
