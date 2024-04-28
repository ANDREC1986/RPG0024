import 'package:flutter/material.dart';
import '../components/locationTitleSection.dart';
import '../components/locationMenu.dart';
import '../components/locationImage.dart';
import '../components/locationText.dart';

class Location extends StatelessWidget {
  const Location({super.key  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Column(
                children: [
                        LocationImage(
                            image: 'images/lake.jpg'
                        ),
                        TitleSection(
                        name: 'Oeschinen Lake Campground',
                        location: 'Kandersteg, Switzerland',
                            ),
                        LocationMenu(),
                        LocationText(
                            description: 'O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses. Situado a 1.578 metros acima do nível do mar, é um dos lagos alpinos mais amplos. Um passeio de teleférico a partir de Kandersteg, seguido por meia hora de caminhada por pastagens e floresta de pinheiros, leva você ao lago, que aquece até 20 graus Celsius no verão. As atividades desfrutadas aqui incluem remo e andar no tobogã de verão.'
                            ),
                ]
            )
        );
} 
}