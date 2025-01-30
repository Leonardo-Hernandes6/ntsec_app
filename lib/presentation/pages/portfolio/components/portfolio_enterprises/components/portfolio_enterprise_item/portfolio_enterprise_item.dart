import 'package:flutter/material.dart';

class PortfolioEnterpriseItem extends StatelessWidget {
  final String title;
  final String sub_title;

  const PortfolioEnterpriseItem({
    super.key,
    required this.title,
    required this.sub_title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.0,
      width: 150.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            sub_title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
