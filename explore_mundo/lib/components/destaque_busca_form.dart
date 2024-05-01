import 'package:explore_mundo/screens/busca.dart';
import 'package:flutter/material.dart';

class BuscaForm extends StatefulWidget {
  @override
  _BuscaFormState createState() => _BuscaFormState();
}

class _BuscaFormState extends State<BuscaForm> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _buscar() {
    String buscar = _controller.text;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Busca(buscado: buscar)));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Seu destino...'),
        )),
        IconButton(
            onPressed: _buscar,
            icon: const Icon(
              Icons.search,
            ))
      ],
    );
  }
}
