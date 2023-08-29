import 'package:flutter/material.dart';

import '../widgets/bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
          ),
          body: const Center(
            child: Text('Home'),
          ),
          bottomNavigationBar: const BottomBar()),
    );
  }
}
