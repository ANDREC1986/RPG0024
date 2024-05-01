import 'package:explore_mundo/repositories/in_memory_database.dart';
import 'package:flutter/material.dart';

class Busca extends StatelessWidget {
  final String buscado;

  Busca({super.key, required this.buscado});

  var database = InMemmoryDatabase();

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Text('tela em branco' + buscado),
    ));
  }
}
