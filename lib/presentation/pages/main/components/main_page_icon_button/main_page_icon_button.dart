import 'package:flutter/material.dart';

class MainPageIconButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const MainPageIconButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.purple.shade200,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () => {},
            icon: Icon(icon),
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
