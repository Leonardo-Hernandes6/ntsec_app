import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/home/components/alerts/components/alerts_card.dart';

class Alerts extends StatelessWidget {
  const Alerts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Alertas do seu ambiente",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff83ae36),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              AlertsCard(),
              AlertsCard(),
              AlertsCard(),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        )
      ],
    );
  }
}
