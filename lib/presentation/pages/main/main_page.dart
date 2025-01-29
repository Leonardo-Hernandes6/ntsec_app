import 'package:flutter/material.dart';
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
                gradient: LinearGradient(
                  colors: [Color(0xFF353735), Color(0xFF4C6030)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 1.0],
                ),
              ),
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
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 40.0, bottom: 80.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            MainPageIconButton(
                              icon: Icons.security,
                              label: "Segurança",
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            MainPageIconButton(
                              icon: Icons.notifications_active,
                              label: "Alertas",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            MainPageIconButton(
                              icon: Icons.lock,
                              label: "Privacidade",
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            MainPageIconButton(
                              icon: Icons.phone_in_talk,
                              label: "Atendimento",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            MainPageIconButton(
                              icon: Icons.document_scanner,
                              label: "Documentos",
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            MainPageIconButton(
                              icon: Icons.access_alarm,
                              label: "Alarmes",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            MainPageIconButton(
                              icon: Icons.location_on,
                              label: "Monitoramento",
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            MainPageIconButton(
                              icon: Icons.settings,
                              label: "Configurações",
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Atendimentos",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Capitais",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "0000-0000",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sac",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "0800 000 0000",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
