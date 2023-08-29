import 'package:flutter/material.dart';

import '../widgets/back_stack.dart';
import '../widgets/front_stack.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Stack(
          children: [BackStack(), FrontStack()],
        ),
      ),
    );
  }
}
