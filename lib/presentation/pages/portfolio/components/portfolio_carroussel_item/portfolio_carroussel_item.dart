import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PortfolioCarrousselItem extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> data;

  const PortfolioCarrousselItem({
    super.key,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título principal
          Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade300,
              ),
            ),
          ),
          const SizedBox(height: 20.0),

          ...data.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    item["icon"]["path"],
                    height: item["icon"]["height"],
                    width: item["icon"]["width"],
                    colorFilter: ColorFilter.mode(
                      Colors.grey.shade300,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  for (var text in item["data"])
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey.shade300,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
