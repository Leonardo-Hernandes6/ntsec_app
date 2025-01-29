import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/portfolio_page.dart';

class MainPageFooter extends StatelessWidget {
  const MainPageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const PotfolioPage(),
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
            child: Container(
              height: 110.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/ntsec_escudo.png",
                        height: 80.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Ficou sabendo da nossa novidade?",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Flexible(
                          child: Text(
                            "Recentemente adicionamos nosso portfólio ao aplicativo, venha dar uma olhada!",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.purple,
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Center(
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.grey.shade300,
            ),
          )
        ],
      ),
    );
  }
}
