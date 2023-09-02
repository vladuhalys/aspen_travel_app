import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.montserrat(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black));
  }
}
