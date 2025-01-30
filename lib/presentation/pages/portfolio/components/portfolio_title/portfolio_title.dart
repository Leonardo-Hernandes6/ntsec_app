import 'package:flutter/material.dart';

class PortfolioTitle extends StatelessWidget {
  final String label;

  const PortfolioTitle({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/ntsec_logo_white.png",
              height: 30,
            ),
            const SizedBox(
              width: 15.0,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50.0,
        ),
      ],
    );
  }
}
