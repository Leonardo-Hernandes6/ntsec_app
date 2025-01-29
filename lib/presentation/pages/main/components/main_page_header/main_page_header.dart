import 'package:flutter/material.dart';

class MainPageHeader extends StatelessWidget {
  const MainPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    int notificationCount = 3;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/ntsec_logo.png",
            height: 35.0,
          ),
          Row(
            children: [
              Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications,
                        color: Colors.white, size: 25),
                    onPressed: () {},
                  ),
                  if (notificationCount > 0)
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 8,
                          minHeight: 8,
                        ),
                      ),
                    ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.message, color: Colors.white),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
