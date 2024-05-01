import 'package:explore_mundo/components/busca_resultado.dart';
import 'package:explore_mundo/models/location.dart';
import 'package:explore_mundo/repositories/in_memory_database.dart';
import 'package:flutter/material.dart';

class Busca extends StatelessWidget {
  final String buscado;

  Busca({super.key, required this.buscado});

  var database = InMemmoryDatabase();
  @override
  Widget build(BuildContext context) {
    List<Location> resultado = [];
    for (Location location in database.database) {
      if (location.nome.contains(buscado) ||
          location.location.contains(buscado)) {
        resultado.add(location);
      }
    }

    if (resultado.isEmpty) {
      return (Scaffold(
          body: Padding(
              padding: EdgeInsets.only(top: 60),
              child: Column(children: [
                const Text('Resultado da Busca:',
                    style: TextStyle(color: Colors.red, fontSize: 20)),
                Container(
                  padding: EdgeInsets.all(32),
                  child: Text('Nenhum resultado encontrado'),
                ),
              ]))));
    } else {
      return (Scaffold(
          body: Padding(
              padding: EdgeInsets.only(top: 60),
              child: Column(children: [
                const Text('Resultado da Busca:',
                    style: TextStyle(color: Colors.red, fontSize: 20)),
                Expanded(
                    child: Container(
                        child: ListView.builder(
                            itemCount: resultado.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  child: BuscaResultado(
                                      location: resultado[index]));
                            })))
              ]))));
    }
  }
}
