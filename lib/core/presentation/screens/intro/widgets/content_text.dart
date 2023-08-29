import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentText extends StatelessWidget {
  const ContentText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Plan your',
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Text(
          'Luxurious\nVacation',
          style: GoogleFonts.montserrat(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
