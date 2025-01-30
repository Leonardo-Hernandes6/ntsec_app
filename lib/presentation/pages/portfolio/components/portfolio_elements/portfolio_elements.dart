import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_title/portfolio_title.dart';

class PortfolioElements extends StatelessWidget {
  const PortfolioElements({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          PortfolioTitle(
            label: "Nosso Portifólio | Elementos",
          ),
          Image.asset(
            "assets/images/ntsec_escudo_erased.png",
            height: 300.0,
          ),
          const SizedBox(
            height: 50.0,
          ),
          Text(
            "Nosso portfólio é fundamentado em um framework robusto e proprietário, composto por nossas empresas e baseado em nossas premissas.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Cada solução que oferecemos é inserida no framework para corresponder às premissas e vetores específicos, proporcionando uma visão de como elas atuam e agregam valor.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Essa estrutura permite uma compreensão de como as nossas ofertas se alinham com as necessidades de nossos clientes, garantindo um serviço personalizado e de alta qualidade.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Explore nosso portfólio e veja como nossas soluções integradas podem fortalecer a segurança do seu negócio.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            "assets/images/ntsec_security_center_white.png",
            height: 300.0,
          ),
          Text(
            "Em torno do framework, envolvendo todo o potfólio, está o escudo que representa o Security Center do Grupo NTSec.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Ele atua como uma linha de defesa e suporte contínuo, garantindo que todas as nossas soluções operem em um ambiente seguro e controlado.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
