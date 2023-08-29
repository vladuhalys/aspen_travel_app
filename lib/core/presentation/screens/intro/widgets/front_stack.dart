import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'content_text.dart';
import 'explore_button.dart';

class FrontStack extends StatelessWidget {
  const FrontStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 75, 30, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/icons/aspen.svg'),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ContentText(), SizedBox(height: 30), ExploreButton()],
            ),
          ],
        ),
      ),
    );
  }
}
