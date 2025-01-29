import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_app_bar/portfolio_app_bar.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_carroussel_item/portfolio_carroussel_item.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_elements/portfolio_elements.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_enterprises/portfolio_enterprises.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_numbers/portfolio_numbers.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_partnes/portfolio_partnes.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/components/portfolio_premises/portfolio_premises.dart';

import 'items_data/cloudsec_items.dart';
import 'items_data/infosec_items.dart';
import 'items_data/ntsec_items.dart';
import 'items_data/zivasec_items.dart';

class PotfolioPage extends StatefulWidget {
  const PotfolioPage({super.key});

  @override
  State<PotfolioPage> createState() => _PotfolioPageState();
}

class _PotfolioPageState extends State<PotfolioPage> {
  final List<String> itemsTitle = [
    "assets/logos/ntsec_enterprise_logo.png",
    "assets/logos/infosec_logo.png",
    "assets/logos/cloudsec_logo.png",
    "assets/logos/zivasec_logo.png"
  ];

  final PageController _titlePageController = PageController();
  final PageController _itemPageController = PageController();
  int currentIndex = 0;

  final List<Gradient> gradients = [
    LinearGradient(
      colors: [Color(0xFF353735), Color(0xFF7BA73F)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.3, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF353735), Color(0xFFF2AD24)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.3, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF353735), Color(0xFFE4087E)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.3, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF353735), Color(0xFF00C2FA)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.3, 1.0],
    ),
  ];

  final List<List<Map<String, dynamic>>> itemsData = [
    ntsec_items,
    infosec_items,
    cloudsec_items,
    zivasec_items,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          gradient: gradients[currentIndex],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 60.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                PortfolioAppBar(),
                Image.asset(
                  "assets/images/ntsec_logo_white.png",
                  height: 60,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Um só parceiro para toda a sua jornada de segurança",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.grey.shade200,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey.shade300,
                    ),
                    "com mais de 15 anos de experiência dedicados à excelência em segurança cibernética, o Grupo NTSec é reconhecido por oferecer soluções avançadas e integradas para rede, infraestrutura, numve e dados. Com uma forte cultura de inovação e um compromisso inabalável com o futuro seguro, o Grupo NTSec dispõe de um portfólio de serviços que o mantém sempre à frente dos desafios tecnológicos, assegurando que seus mais de 200 clientes possam focar no crescimento de seus negócios com total tranquilidade.",
                  ),
                ),
                PortfolioNumbers(),
                PortfolioElements(),
                PortfolioEnterprises(),
                PortfolioPremises(),
                PortfolioPartnes(),
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: Text(
                    "Dê uma olhada deslizando para a esquerda:",
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _titlePageController,
                    itemCount: itemsTitle.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                        _itemPageController.jumpToPage(0);
                      });
                    },
                    itemBuilder: (context, index) {
                      return Center(
                        child: Image.asset(itemsTitle[index]),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 700.0,
                  child: PageView.builder(
                    controller: _itemPageController,
                    itemCount: itemsData[currentIndex].length,
                    onPageChanged: (index) {},
                    itemBuilder: (context, index) {
                      return PortfolioCarrousselItem(
                        title: itemsData[currentIndex][index]["title"],
                        data: List<Map<String, dynamic>>.from(
                          itemsData[currentIndex][index]["data"],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 80.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
