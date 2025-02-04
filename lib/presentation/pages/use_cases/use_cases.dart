import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/use_cases/data/educacao_data.dart';
import 'package:ntsec_kickoff_app/presentation/pages/use_cases/data/financeiro_data.dart';
import 'package:ntsec_kickoff_app/presentation/pages/use_cases/data/justice_data.dart';
import 'package:ntsec_kickoff_app/presentation/pages/use_cases/data/prefeituras_data.dart';
import 'package:ntsec_kickoff_app/presentation/pages/use_cases/data/saude_data.dart';
import 'package:ntsec_kickoff_app/presentation/pages/use_cases/data/transporte_data.dart';

class UseCasesPage extends StatefulWidget {
  const UseCasesPage({super.key});

  @override
  State<UseCasesPage> createState() => _UseCasesPageState();
}

class _UseCasesPageState extends State<UseCasesPage> {
  final PageController _itemPageController = PageController();
  int currentIndex = 0;
  int currentItemPageIndex = 0;

  final List<String> itemsTitle = [
    "Justiça",
    "Educação",
    "Financeiro",
    "Prefeituras",
    "Saúde",
    "Transporte",
  ];

  final List<List<Map<String, dynamic>>> itemsData = [
    justiceData,
    educacaoData,
    financeiroData,
    prefeiturasData,
    saudeData,
    transporteData,
  ];

  final List<IconData> itemsIcon = [
    Icons.balance,
    Icons.school,
    Icons.attach_money,
    Icons.account_balance,
    Icons.local_hospital,
    Icons.directions_bus,
  ];

  void _nextItem() {
    if (currentIndex < itemsTitle.length - 1) {
      setState(() {
        currentIndex++;
      });
    }
  }

  void _previousItem() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Gradient> gradients = [
      LinearGradient(
        colors: [Color(0xFF33363f), Color(0xFF222222)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      LinearGradient(
        colors: [Color(0xFF006478), Color(0xFF222222)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.3, 1.0],
      ),
      LinearGradient(
        colors: [Color(0xFF33363f), Color(0xFF222222)],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: [0.3, 1.0],
      ),
      LinearGradient(
        colors: [Color(0xFF7AAB40), Color(0xFF222222)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.3, 1.0],
      ),
      LinearGradient(
        colors: [Color(0xFF006478), Color(0xFF222222)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.3, 1.0],
      ),
      LinearGradient(
        colors: [Color(0xFF7AAB40), Color(0xFF222222)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.3, 1.0],
      ),
    ];

    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: gradients[currentIndex],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 25.0, right: 25.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => {Navigator.pop(context)},
                    child: Icon(
                      Icons.arrow_back,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  children: [
                    Text(
                      "Experiência técnica comprovada em",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "diversos segmentos de mercado",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          if (currentIndex > 0)
                            Positioned(
                              left: 0.0,
                              top: 10.0,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_left,
                                  color: Colors.grey.shade200,
                                  size: 36.0,
                                ),
                                onPressed: _previousItem,
                              ),
                            ),
                          if (currentIndex < itemsTitle.length - 1)
                            Positioned(
                              right: 0.0,
                              top: 10.0,
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_right,
                                  color: Colors.grey.shade200,
                                  size: 36.0,
                                ),
                                onPressed: _nextItem,
                              ),
                            ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Colors.black.withValues(alpha: 0.2),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    itemsIcon[currentIndex],
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Text(
                                itemsTitle[currentIndex],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 600.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: itemsData[currentIndex].map((group) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: group["data"].map<Widget>((item) {
                                final iconData = item["icon"];
                                return Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: FractionallySizedBox(
                                      widthFactor: 1,
                                      child: Image.asset(
                                        iconData["path"],
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
