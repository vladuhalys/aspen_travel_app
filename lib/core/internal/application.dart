import 'package:aspen_travel_app/core/presentation/screens/detail/presentation/detail_screen.dart';
import 'package:aspen_travel_app/core/presentation/screens/home/presentation/home_screen.dart';
import 'package:aspen_travel_app/core/presentation/screens/intro/presentation/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/intro',
      getPages: [
        GetPage(
          name: '/intro',
          page: () => const IntroScreen(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/detail',
          page: () => const DetailScreen(),
        ),
      ],
    );
  }
}
