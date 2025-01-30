import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_enterprises/components/portfolio_enterprise_card/portfolio_enterprise_card.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_enterprises/components/portfolio_enterprise_item/portfolio_enterprise_item.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_title/portfolio_title.dart';

class PortfolioEnterprises extends StatelessWidget {
  const PortfolioEnterprises({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          PortfolioTitle(
            label: "Nosso Portifólio | Empresas",
          ),
          Text(
            "Nosso portfólio é fundamentado em um framework robusto e proprietário, composto por nossas empresas e baseado em nossas premissas.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  PortfolioEnterpriseItem(
                    title: "NTSec",
                    sub_title: "Empresa focada em Aplicações e Usuário",
                  ),
                  PortfolioEnterpriseItem(
                    title: "Infosec",
                    sub_title: "Empresa focada em Dados",
                  ),
                ],
              ),
              Column(
                children: [
                  PortfolioEnterpriseItem(
                    title: "Cloudsec",
                    sub_title: "Empresa focada em Nuvem",
                  ),
                  PortfolioEnterpriseItem(
                    title: "NTSec",
                    sub_title: "Empresa focada em Rede",
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  PortfolioEnterpriseCard(
                    image: "assets/logos/ntsec_enterprise_logo.png",
                    title: "CyberSecurity",
                    description:
                        "Focamos na proteção de aplicações, prevenindo contra ameaças e garantindo a integridade e desempenho.",
                  ),
                  PortfolioEnterpriseCard(
                    image: "assets/logos/infosec_logo.png",
                    title: "DataSecurity",
                    description:
                        "Protegemos os ativos mais preciosos do seu negócio, garantindo a confidenciabilidade, integridade e disponibilidade das informações.",
                  ),
                  PortfolioEnterpriseCard(
                    image: "assets/logos/cloudsec_logo.png",
                    title: "CloudSecurity",
                    description:
                        "Nossa abordagem de segurança para ambientes em nuvem assegura que dados e aplicativos armazenados sejam protegidos de ponta a ponta",
                  ),
                  PortfolioEnterpriseCard(
                      image: "assets/logos/zivasec_logo.png",
                      title: "NetworkSecurity",
                      description:
                          "Garantimos a segurança das infraestruturas de rede protegendo contra ataques e vulnerabilidades."),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
