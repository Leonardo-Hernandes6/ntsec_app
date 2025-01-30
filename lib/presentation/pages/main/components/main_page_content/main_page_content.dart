import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/home/home_page.dart';

class MainPageContent extends StatelessWidget {
  const MainPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Construindo hoje \num amanhã mais\nseguro!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [
                        Color(0xFF7EAD41),
                        Color(0xFFF4C81A),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds),
                    child: Text(
                      "MAIS SEGURO",
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Text(
            "Recuperar senha",
            style: TextStyle(
              color: Colors.grey.shade300,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const HomePage(),
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
              height: 90.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Le",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Leonardo Hernandes",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "NTSEC DF",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Icon(
                Icons.autorenew,
                color: Colors.grey.shade300,
              ),
              const SizedBox(width: 5.0),
              Text(
                "Trocar conta",
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 110.0),
        ],
      ),
    );
  }
}
