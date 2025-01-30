import 'package:flutter/material.dart';

class AlertsCard extends StatelessWidget {
  const AlertsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: Dismissible(
        key: Key('alertCard'),
        direction: DismissDirection.horizontal,
        onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Confirmado')),
            );
          } else if (direction == DismissDirection.endToStart) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Descartado')),
            );
          }
        },
        background: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 38, 78, 39), // Cor verde
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
        ),
        secondaryBackground: Container(
          decoration: BoxDecoration(
            color: Colors.red, // Cor vermelha
            borderRadius: BorderRadius.circular(10),
            border: Border(
              right: BorderSide(
                  color: Colors.red,
                  width: 5.0), // Borda vermelha no lado direito
            ),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF33363F),
            borderRadius: BorderRadius.circular(2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Check Point",
                  style: TextStyle(
                    color: Colors.grey.shade300,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "A new update has been applied to the Check Point Security environment, which includes essential security...",
                  style: TextStyle(
                    color: Colors.grey.shade300,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
