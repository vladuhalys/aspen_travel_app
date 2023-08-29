import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.house_fill,
              size: 24,
              // ignore: deprecated_member_use
              color: (_selectedIndex == 0)
                  ? const Color(0xFF196EEE)
                  : const Color(0xFFB8B8B8),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Ticket.svg',
              width: 20, height: 20,
              // ignore: deprecated_member_use
              color: (_selectedIndex == 1)
                  ? const Color(0xFF196EEE)
                  : const Color(0xFFB8B8B8),
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Heart.svg',
              width: 22, height: 22,
              // ignore: deprecated_member_use
              color: (_selectedIndex == 2)
                  ? const Color(0xFF196EEE)
                  : const Color(0xFFB8B8B8),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Profile.svg',
              width: 22, height: 22,
              // ignore: deprecated_member_use
              color: (_selectedIndex == 3)
                  ? const Color(0xFF196EEE)
                  : const Color(0xFFB8B8B8),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped);
  }
}
