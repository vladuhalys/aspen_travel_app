import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NonSelectedItem extends StatelessWidget {
  const NonSelectedItem({super.key, required this.item});

  final String item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Text(
        item,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color(0xFFB8B8B8),
        ),
      ),
    );
  }
}
