import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ntsec_kickoff_app/presentation/pages/main/components/main_page_content/main_page_content.dart';
import 'package:ntsec_kickoff_app/presentation/pages/main/components/main_page_footer/main_page_footer.dart';
import 'package:ntsec_kickoff_app/presentation/pages/main/components/main_page_header/main_page_header.dart';
import 'package:ntsec_kickoff_app/presentation/pages/main/components/main_page_icon_button/main_page_icon_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background_3.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withValues(alpha: 0.6),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MainPageHeader(),
                      MainPageContent(),
                      MainPageFooter(),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.shade100,
                    Colors.grey.shade300,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 30.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text(
                        "Como podemos ajudar?",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              MainPageIconButton(
                                icon: Icons.lightbulb_outline,
                                label: "Soluções",
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              MainPageIconButton(
                                icon: Icons.analytics,
                                label: "Análise",
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MainPageIconButton(
                                icon: Icons.map,
                                label: "Guias",
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              MainPageIconButton(
                                icon: Icons.public,
                                label: "Site",
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MainPageIconButton(
                                icon: Icons.feed,
                                label: "Feed",
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              MainPageIconButton(
                                icon: Icons.security,
                                label: "Proteção",
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MainPageIconButton(
                                icon: Icons.star,
                                label: "Avaliações",
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              MainPageIconButton(
                                icon: Icons.assignment,
                                label: "Políticas",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF7BA73F),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/rocket_icon.svg",
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Conecte-se com a Equipe Comercial Ideal",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      ),
                                      softWrap:
                                          true, // Permite que o texto quebre a linha
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 280.0,
                                    child: Text(
                                      "Escolha sua localidade, especialização ou produto para entrar em contato diretamente com a equipe certa",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13.0,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF435064),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/user_icon.svg",
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Usuário",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25.0,
                                      ),
                                      softWrap:
                                          true, // Permite que o texto quebre a linha
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Center(
                                child: SizedBox(
                                  width: 280.0,
                                  child: Text(
                                    "Soluções voltadas para usuário, que vão desde educação básicae avançada, gerenciamento de privilégios e credenciais, duplo falor de autenticação e visibilidade de tráfego.",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 20.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Atendimentos",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.message,
                                color: Color(0xFF7BA73F),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "WathsApp",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.headset_mic,
                                color: Color(0xFF7BA73F),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Sac NTSec",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.camera_alt,
                                color: Color(0xFF7BA73F),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Instagram",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Acesso ao site Grupo NTSec",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
