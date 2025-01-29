import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 1;

  final List<String> _icons = [
    "assets/icons/icon_0.svg",
    "assets/icons/icon_1.svg",
    "assets/icons/icon_2.svg",
    "assets/icons/icon_3.svg",
    "assets/icons/icon_5.svg",
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 25.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xff83ae36),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(_icons.length, (index) {
              return GestureDetector(
                onTap: () => onItemTapped(index),
                child: _buildIcon(index),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(int index) {
    bool isSelected = index == _selectedIndex;

    return isSelected
        ? CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              _icons[index],
              height: 24.0,
              width: 24.0,
              colorFilter: const ColorFilter.mode(
                Colors.black54,
                BlendMode.srcIn,
              ),
            ),
          )
        : SvgPicture.asset(
            _icons[index],
            height: 24.0,
            width: 24.0,
            colorFilter: const ColorFilter.mode(
              Colors.black54,
              BlendMode.srcIn,
            ),
          );
  }
}
