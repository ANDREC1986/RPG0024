import 'package:explore_mundo/models/location.dart';
import 'package:flutter/material.dart';
import '../screens/location.dart' as Location_screen;

class BuscaResultado extends StatelessWidget {
  final Location location;

  const BuscaResultado({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Location_screen.Location(
                  nome: location.nome,
                  location: location.location,
                  description: location.description,
                  image: location.image)));
    }

    return (GestureDetector(
        onTap: onPressed,
        child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      spreadRadius: 3,
                      offset: Offset(3, 0))
                ],
                border: Border.all(width: 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location.nome,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  location.location,
                  style: TextStyle(fontSize: 18),
                )
              ],
            ))));
  }
}
