import 'package:flutter/material.dart';

class PortfolioAppBar extends StatelessWidget {
  const PortfolioAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () => {
              Navigator.pop(context),
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 115.0,
          ),
          Text(
            "Portfólio",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
