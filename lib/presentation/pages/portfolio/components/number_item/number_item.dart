import 'package:flutter/material.dart';

class NumberItem extends StatelessWidget {
  final IconData icon;
  final String number;
  final String label;
  final String? label_2;

  const NumberItem({
    super.key,
    required this.icon,
    required this.number,
    required this.label,
    this.label_2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        width: 150.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  size: 40.0,
                  color: Colors.grey.shade300,
                ),
                Text(
                  "+ $number",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey.shade300,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey.shade300,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (label_2 != null)
              Text(
                label_2!,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade300,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
