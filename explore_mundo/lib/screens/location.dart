import 'package:flutter/material.dart';
import '../components/location_title_section.dart';
import '../components/location_menu.dart';
import '../components/location_image.dart';
import '../components/location_text.dart';

class Location extends StatelessWidget {
  const Location({
    super.key,
    required this.nome,
    required this.location,
    required this.description,
    required this.image,
  });

  final String nome;
  final String location;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        LocationImage(image: image),
        TitleSection(
          name: nome,
          location: location,
        ),
        LocationMenu(),
        LocationText(description: description)
      ],
    ));
  }
}
