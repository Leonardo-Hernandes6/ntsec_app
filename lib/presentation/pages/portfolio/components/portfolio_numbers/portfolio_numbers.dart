import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/number_item/number_item.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_title/portfolio_title.dart';

class PortfolioNumbers extends StatelessWidget {
  const PortfolioNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PortfolioTitle(
          label: "Grupo NTSEC em números",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  NumberItem(
                    icon: Icons.group,
                    number: "300",
                    label: "Colaboradores",
                  ),
                  NumberItem(
                    icon: Icons.work,
                    number: "700",
                    label: "Projetos",
                  ),
                  NumberItem(
                    icon: Icons.business,
                    number: "9",
                    label: "Escritórios",
                  ),
                ],
              ),
              Column(
                children: [
                  NumberItem(
                    icon: Icons.verified,
                    number: "300",
                    label: "Certificações",
                  ),
                  NumberItem(
                    icon: Icons.person_add,
                    number: "300",
                    label: "Clientes",
                    label_2: "Atendidos",
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
