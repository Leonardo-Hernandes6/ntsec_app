import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ntsec_kickoff_app/presentation/pages/home/components/alerts/alerts.dart';
import 'package:ntsec_kickoff_app/presentation/pages/home/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ntsec_kickoff_app/presentation/pages/home/components/favorite_actions/favorite_actions.dart';
import 'package:ntsec_kickoff_app/presentation/pages/home/components/home_page_header/home_page_header.dart';
import 'package:ntsec_kickoff_app/presentation/pages/menu/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
        selected_index: _selectedIndex,
        onTap: onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 90.0, left: 25.0, right: 25.0),
          child: _selectedIndex == 0
              ? MenuPage()
              : Column(
                  children: [
                    HomePageHeader(),
                    const SizedBox(
                      height: 30.0,
                    ),
                    FavoriteActions(),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF33363F),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Iniciar análise de vulnerabilidades",
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              "This form allows users to initiate a comprehensive scan to identify vulnerabilities within their environment.",
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontWeight: FontWeight.bold,
                                fontSize: 11.0,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            ElevatedButton(
                              onPressed: () => {},
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Color(0xff83ae36)),
                                padding: WidgetStateProperty.all(
                                    EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 12.0)),
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                              child: Text(
                                "Responder Questionário",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Alerts(),
                    const SizedBox(
                      height: 130.0,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
