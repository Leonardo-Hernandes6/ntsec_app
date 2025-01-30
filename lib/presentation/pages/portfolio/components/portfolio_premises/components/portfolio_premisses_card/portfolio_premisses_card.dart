import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PortfolioPremissesCard extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  final double iconHeigth;

  const PortfolioPremissesCard({
    super.key,
    required this.icon,
    required this.iconHeigth,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            height: iconHeigth,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            // "Visibilidade",
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
