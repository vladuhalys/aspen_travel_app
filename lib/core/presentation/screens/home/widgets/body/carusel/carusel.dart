import 'package:aspen_travel_app/core/data/fake_data/places.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'carusel_item.dart';

class Carusel extends StatefulWidget {
  const Carusel({super.key});

  @override
  State<Carusel> createState() => _CaruselState();
}

class _CaruselState extends State<Carusel> {
  Places places = Places();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return CaruselItem(place: places.data[index]);
          },
          itemHeight: 100,
          itemWidth: 50,
          itemCount: 7,
          viewportFraction: 0.7,
          scale: 0.7,
        ),
      ),
    );
  }
}
