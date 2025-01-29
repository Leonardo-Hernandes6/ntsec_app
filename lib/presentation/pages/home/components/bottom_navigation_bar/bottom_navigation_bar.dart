import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ntsec_kickoff_app/presentation/pages/menu/menu_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  int selected_index;
  Function onTap;

  CustomBottomNavigationBar({
    super.key,
    required this.selected_index,
    required this.onTap,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final List<String> _icons = [
    "assets/icons/icon_0.svg",
    "assets/icons/icon_1.svg",
    "assets/icons/icon_2.svg",
    "assets/icons/icon_3.svg",
    "assets/icons/icon_5.svg",
  ];

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
                onTap: () => widget.onTap(index),
                child: _buildIcon(index),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(int index) {
    bool isSelected = index == widget.selected_index;

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
