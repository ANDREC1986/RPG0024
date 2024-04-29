import 'package:flutter/material.dart';
import '../components/home_destaque.dart';
import '../screens/location.dart';
import '../repositories/in_memory_database.dart';

var database = InMemmoryDatabase();

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: screenWidth,
        height: screenHeight,
        child: PageView.builder(
            itemCount: database.database.length,
            itemBuilder: (context, index) {
              return Destaque(
                imagePath: database.database[index].image,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Location(
                              nome: database.database[index].nome,
                              location: database.database[index].location,
                              description: database.database[index].description,
                              image: database.database[index].image)));
                },
              );
            }));
  }
}
