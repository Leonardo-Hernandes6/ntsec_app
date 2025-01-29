import 'package:flutter/material.dart';

class PortfolioPremissesCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const PortfolioPremissesCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.grey.shade300,
            size: 50.0,
          ),
          Text(
            // "Visibilidade",
            title,
            style: TextStyle(
              color: Colors.grey.shade300,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            description,
            // "",
            style: TextStyle(
              color: Colors.grey.shade300,
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
