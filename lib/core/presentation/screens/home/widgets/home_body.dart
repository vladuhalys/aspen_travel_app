import 'package:aspen_travel_app/core/presentation/screens/home/widgets/body/text_header.dart';
import 'package:flutter/cupertino.dart';
import 'body/carusel/carusel.dart';
import 'body/list_bar/list_bar.dart';
import 'body/logo_and_location.dart';
import 'body/search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          LogoAndLoaction(),
          SizedBox(height: 30),
          SearchBar(),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ListBar(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: TextHeader(text: "Popular")),
          ),
          Carusel(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: TextHeader(text: "Recommended")),
          ),
          Carusel(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
