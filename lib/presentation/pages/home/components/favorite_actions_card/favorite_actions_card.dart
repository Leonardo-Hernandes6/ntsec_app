import 'package:flutter/material.dart';

class FavoriteActionsCard extends StatelessWidget {
  final Color color;
  final String icon;
  final String label;
  final Widget page;

  const FavoriteActionsCard({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => page,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = 0.0;
                const end = 1.0;
                const curve = Curves.easeInOut;
                var opacityAnimation = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve))
                    .animate(animation);

                return FadeTransition(
                  opacity: opacityAnimation,
                  child: child,
                );
              },
            ),
          )
        },
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
      ),
    );
  }
}
