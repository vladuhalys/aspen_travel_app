import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'non_selected_item.dart';
import 'selected_item.dart';

class ListBar extends StatefulWidget {
  const ListBar({super.key});

  @override
  State<ListBar> createState() => _ListBarState();
}

class _ListBarState extends State<ListBar> {
  final List<String> advItems = [
    'Location',
    'Hotels',
    'Restaurants',
    'Events',
    'Activities',
    'More',
  ];

  var selectedValue = 'Location';

  @override
  Widget build(BuildContext context) {
    return Scrollable(
      viewportBuilder: (BuildContext context, ViewportOffset position) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var item in advItems)
                (selectedValue == item)
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SelectedItem(item: item),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              setState(() {
                                selectedValue = item;
                              });
                            },
                            child: NonSelectedItem(item: item)),
                      ),
            ],
          ),
        );
      },
    );
  }
}
