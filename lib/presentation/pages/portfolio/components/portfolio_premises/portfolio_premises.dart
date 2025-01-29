import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_premises/components/portfolio_premisses_card/portfolio_premisses_card.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_title/portfolio_title.dart';

class PortfolioPremises extends StatelessWidget {
  const PortfolioPremises({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PortfolioTitle(
          label: "Nosso Portfólio | Premissas",
        ),
        Text(
          "Conheça nossas premissas:",
          style: TextStyle(
            color: Colors.grey.shade300,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        PortfolioPremissesCard(
          icon: Icons.visibility,
          title: "Visibilidade",
          description:
              "Capacidade de monitorar e visualizar todas as atividades, dados e eventos em uma rede, sistema ou aplicação. É essencial para identificar rapidamente anomalias, ameaças e comportamentos indesejados.",
        ),
        PortfolioPremissesCard(
          icon: Icons.settings,
          title: "Controle",
          description:
              "Capacidade de gerenciar, regular e restringir o acesso e o uso de recursos e dados dentro de uma organização. É fundamental para garantir que apenas usuários autorizados possam acessar determinados recursos e dados",
        ),
        PortfolioPremissesCard(
          icon: Icons.access_time,
          title: "Disponibilidade",
          description:
              "Capacidade de garantir que os sistemas, redes e aplicações estejam operacionais e acessíveis sempre que necessário. Ë crucial para manter a continuidade dos negócios e minimizar o tempo de inatividade",
        ),
        PortfolioPremissesCard(
          icon: Icons.fact_check,
          title: "Integridade",
          description:
              "Capacidade de garantir que os dados e os recursos estejam corretos, completos e protegidos contra alterações não autorizadas. É vital para a precisão e a confiabilidade das informações",
        ),
      ],
    );
  }
}
