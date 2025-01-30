import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/portfolio/portfolio_page.dart';
import 'package:ntsec_kickoff_app/presentation/pages/services_list/components/services_list_card/services_list_card.dart';

class ServicesList extends StatefulWidget {
  const ServicesList({super.key});

  @override
  State<ServicesList> createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
  final List<Map<String, dynamic>> data = [
    {
      "icon": Icons.folder,
      "icon_color": Colors.purple,
      "title": "Portfólio",
      "description": "Confira nosso novo portfólio",
      "page": PotfolioPage(),
    },
    {
      "icon": Icons.security,
      "icon_color": Colors.green,
      "title": "Avaliação de ambiente",
      "description": "Avalie as premissas do seu ambiente",
    },
    {
      "icon": Icons.support_agent,
      "icon_color": Colors.green,
      "title": "Suporte Técnico",
      "description": "Contato imediato para suporte técnico",
    },
    {
      "icon": Icons.warning,
      "icon_color": const Color.fromARGB(255, 160, 11, 0),
      "title": "Está sob ataque?",
      "description": "Receba ajuda imediata para incidentes de segurança",
    },
    {
      "icon": Icons.shield,
      "icon_color": Colors.green,
      "title": "Análise de Vulnerabilidades",
      "description": "Identifique e corrija falhas de segurança",
    },
    {
      "icon": Icons.business,
      "icon_color": Colors.green,
      "title": "Fornecedores",
      "description": "Gerencie e avalie fornecedores de segurança",
    },
    {
      "icon": Icons.policy,
      "icon_color": Colors.yellow,
      "title": "Políticas",
      "description": "Defina e aplique políticas de segurança",
    },
    {
      "icon": Icons.school,
      "icon_color": Colors.purple,
      "title": "Acceleration Academy",
      "description": "Cursos e treinamentos em segurança",
    },
    {
      "icon": Icons.calendar_today,
      "icon_color": Colors.green,
      "title": "Calendário de Eventos",
      "description": "Fique por dentro dos eventos de segurança",
    },
    {
      "icon": Icons.feedback,
      "icon_color": Colors.yellow,
      "title": "Feedback",
      "description": "Envie seu feedback e sugestões",
    },
    {
      "icon": Icons.search,
      "icon_color": Colors.green,
      "title": "Recon",
      "description": "Ferramentas para reconhecimento de ameaças",
    },
    {
      "icon": Icons.rss_feed,
      "icon_color": Colors.cyan,
      "title": "Feed",
      "description": "Últimas notícias e atualizações de segurança",
    },
    {
      "icon": Icons.security_update,
      "icon_color": Colors.green,
      "title": "Security Center",
      "description": "Monitoramento e resposta a incidentes",
    },
    {
      "icon": Icons.timeline,
      "icon_color": Colors.cyan,
      "title": "MaturIT",
      "description": "Avaliação do nível de maturidade em TI",
    },
    {
      "icon": Icons.headset_mic,
      "icon_color": Colors.cyan,
      "title": "Central de Serviços",
      "description": "Atendimento e suporte especializado",
    },
  ];

  List<Map<String, dynamic>> filteredData = [];

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredData = data;
    _searchController.addListener(_filterData);
  }

  String removeAcentos(String texto) {
    return removeDiacritics(texto);
  }

  void _filterData() {
    String query = removeAcentos(_searchController.text.toLowerCase());
    setState(() {
      filteredData = data.where((item) {
        return removeAcentos(item["title"].toLowerCase()).contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.grey.shade200,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70.0,
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/ntsec_logo.png",
                    height: 25.0,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Principais Serviços",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Pesquise aqui...',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                  ),
                  border: InputBorder.none,
                  isDense: true, // Reduz o espaço vertical no campo de texto
                  contentPadding: EdgeInsets.symmetric(vertical: 11.0),
                ),
              ),

              // const SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets
                      .zero, // Removendo o padding para garantir que comece no topo
                  itemCount: filteredData.length,
                  itemBuilder: (context, index) {
                    return ServicesListCard(
                      icon: filteredData[index]["icon"],
                      iconColor: filteredData[index]["icon_color"],
                      title: filteredData[index]["title"],
                      description: filteredData[index]["description"],
                      page: filteredData[index]["page"],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
