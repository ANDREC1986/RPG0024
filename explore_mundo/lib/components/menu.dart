import 'package:explore_mundo/components/menu_button.dart';
import 'package:explore_mundo/screens/destinos.dart';
import 'package:explore_mundo/screens/pacotes.dart';
import 'package:explore_mundo/screens/sobre.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MenuButton(
            nome: 'Destinos',
            destino: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Destinos()));
            }),
        MenuButton(
            nome: 'Pacotes',
            destino: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Pacotes()));
            }),
        MenuButton(
            nome: 'Sobre',
            destino: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sobre()));
            }),
      ],
    ));
  }
}
