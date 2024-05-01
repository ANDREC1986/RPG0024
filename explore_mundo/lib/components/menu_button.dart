import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String nome;
  final VoidCallback destino;

  const MenuButton({super.key, required this.nome, required this.destino});

  @override
  Widget build(BuildContext context) {
    return (GestureDetector(
        onTap: destino,
        child: Container(child: Text(nome, style: TextStyle(fontSize: 18)))));
  }
}
