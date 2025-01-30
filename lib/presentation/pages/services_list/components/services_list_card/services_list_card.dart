import 'package:flutter/material.dart';

class ServicesListCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  final Widget? page;

  const ServicesListCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Future.delayed(Duration(milliseconds: 300));

        if (page != null) {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => page!,
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
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            const SizedBox(
              width: 10.0,
            ),
            Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                color: iconColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: title == "Está sob ataque?"
                        ? const Color.fromARGB(255, 160, 11, 0)
                        : Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    description,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13.0,
                      height: 1.1,
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
