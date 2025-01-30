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

  String _getIconPath(String title) {
    switch (title) {
      case "Visibilidade":
        return "assets/icons/visibility_icon.svg";
      case "Controle":
        return "assets/icons/control_icon.svg";
      case "Disponibilidade":
        return "assets/icons/availability_icon.svg";
      case "Integridade":
        return "assets/icons/availability_icon.svg";
      default:
        return "assets/icons/integrity_icon.svg";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 20.0,
              ),
              SvgPicture.asset(
                _getIconPath(title),
                height: 25.0,
              ),
              const SizedBox(
                width: 40.0,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.white.withValues(
              alpha: 0.4,
            ),
            thickness: 1,
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
                      Colors.white,
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
                        color: Colors.white,
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
