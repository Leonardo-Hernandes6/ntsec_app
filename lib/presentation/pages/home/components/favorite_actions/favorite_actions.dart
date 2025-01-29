import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/home/components/favorite_actions_card/favorite_actions_card.dart';

class FavoriteActions extends StatelessWidget {
  const FavoriteActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ações favoritas",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                FavoriteActionsCard(
                  color: Color(0xff83ae36),
                  icon: "assets/logos/support_center_logo.png",
                  label: "Principais serviços",
                ),
                FavoriteActionsCard(
                  color: Color(0xff83ae36),
                  icon: "assets/logos/depth_defense_logo.png",
                  label: "Recon",
                ),
              ],
            ),
            Column(
              children: [
                FavoriteActionsCard(
                  color: Color(0xff83ae36),
                  icon: "assets/logos/security_center_logo.png",
                  label: "Security Center",
                ),
                FavoriteActionsCard(
                  color: Color(0xff83ae36),
                  icon: "assets/logos/environment_logo.png",
                  label: "Your Environment",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
