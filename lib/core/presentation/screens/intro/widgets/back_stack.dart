import 'package:flutter/material.dart';

class BackStack extends StatelessWidget {
  const BackStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/back/land.jpg',
        fit: BoxFit.cover, width: double.infinity, height: double.infinity);
  }
}
