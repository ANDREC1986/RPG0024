import 'package:flutter/material.dart';
import 'locationButton.dart';

class LocationMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LocationButton(
          icone: Icons.call,
          texto: 'Call',
          onPressed: () {},
        ),
        LocationButton(
          icone: Icons.route,
          texto: 'Route',
          onPressed: () {},
        ),
        LocationButton(
          icone: Icons.share,
          texto: 'Share',
          onPressed: () {},
        ),
      ],
    );
  }
}