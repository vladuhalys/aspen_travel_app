import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: HomeBody(), bottomNavigationBar: BottomBar()),
    );
  }
}
