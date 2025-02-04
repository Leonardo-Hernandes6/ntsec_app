import 'package:flutter/material.dart';
import 'package:ntsec_kickoff_app/presentation/pages/home/components/alerts/components/alerts_card.dart';

class Alerts extends StatefulWidget {
  const Alerts({super.key});

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  List<Widget> alertsList = List.generate(15, (index) => AlertsCard());

  void removeAlert(int index) {
    if (alertsList.length > 3) {
      setState(() {
        alertsList.removeAt(index);
        alertsList.add(AlertsCard());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Alertas do seu ambiente",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xff83ae36),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              ...List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.only(
                      bottom: 8.0), // Espaçamento entre os cards
                  child: Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.horizontal,
                    onDismissed: (_) => removeAlert(index),
                    background: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: const [
                          Icon(Icons.check, color: Colors.white, size: 30),
                          SizedBox(width: 10),
                          Text(
                            "Aceitar",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    secondaryBackground: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Excluir",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.delete, color: Colors.white, size: 30),
                        ],
                      ),
                    ),
                    child: alertsList[index],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ],
    );
  }
}
