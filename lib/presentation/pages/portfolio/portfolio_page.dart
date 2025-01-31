import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  final PageController _itemPageController = PageController();
  int currentIndex = 0;
  int currentItemPageIndex = 0;

  final List<Gradient> gradients = [
    LinearGradient(
      colors: [Color.fromARGB(255, 118, 168, 52), Color(0xFF222222)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.3, 1.0],
    ),
    LinearGradient(
      colors: [Color.fromARGB(255, 216, 157, 62), Color(0xFF222222)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.3, 1.0],
    ),
    LinearGradient(
      colors: [Color.fromARGB(255, 201, 27, 114), Color(0xFF222222)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.3, 1.0],
    ),
    LinearGradient(
      colors: [Color.fromARGB(255, 36, 90, 189), Color(0xFF222222)],
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
  void initState() {
    super.initState();
    _setLightStatusBar();
  }

  void _setLightStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
  }

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
                SizedBox(
                  height: 60,
                  child: Image.asset(
                    "assets/images/ntsec_logo_white.png",
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Um só parceiro para toda a sua jornada de segurança",
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.grey.shade200,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Com mais de 15 anos de experiência dedicados à excelência em segurança cibernética, o Grupo NTSec é reconhecido por oferecer soluções avançadas e integradas para rede, infraestrutura, nuvem e dados.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                PortfolioNumbers(),
                PortfolioElements(),
                PortfolioEnterprises(),
                PortfolioPremises(),
                PortfolioPartnes(),
                const SizedBox(height: 50),
                SizedBox(
                  height: 100.0,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (currentIndex > 0)
                        Positioned(
                          left: 10.0,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_left,
                              color: Colors.grey.shade200,
                              size: 36.0,
                            ),
                            onPressed: () {
                              if (currentIndex > 0) {
                                setState(() {
                                  currentIndex--;
                                  _itemPageController.jumpToPage(0);
                                });
                              }
                            },
                          ),
                        ),
                      if (currentIndex < itemsTitle.length - 1)
                        Positioned(
                          right: 10.0,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_right,
                              color: Colors.grey.shade200,
                              size: 36.0,
                            ),
                            onPressed: () {
                              if (currentIndex < itemsTitle.length - 1) {
                                setState(() {
                                  currentIndex++;
                                  _itemPageController.jumpToPage(0);
                                });
                              }
                            },
                          ),
                        ),
                      Center(
                        child: Image.asset(
                          itemsTitle[currentIndex],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 700.0,
                  child: Column(
                    children: [
                      Expanded(
                        child: PageView.builder(
                          controller: _itemPageController,
                          itemCount: itemsData[currentIndex].length,
                          onPageChanged: (index) {
                            setState(() {
                              currentItemPageIndex = index;
                            });
                          },
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          itemsData[currentIndex].length,
                          (index) => AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              color: currentItemPageIndex == index
                                  ? Colors.grey.shade300
                                  : Colors.grey.shade600,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
