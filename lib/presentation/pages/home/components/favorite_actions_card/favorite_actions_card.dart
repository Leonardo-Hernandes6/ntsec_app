import 'package:flutter/material.dart';

class FavoriteActionsCard extends StatelessWidget {
  final Color color;
  final String icon;
  final String label;

  const FavoriteActionsCard({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Container(
            width: 170.0,
            height: 135.0,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: Image.asset(
                icon,
                height: 80.0,
              ),
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            label,
            style: TextStyle(
              color: const Color.fromARGB(221, 44, 44, 44),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
