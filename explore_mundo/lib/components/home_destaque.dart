import 'package:explore_mundo/components/menu.dart';
import 'package:flutter/material.dart';
import './destaque_busca_form.dart';

class Destaque extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final String nome;
  final String location;
  final int index;
  final int maxindex;

  const Destaque(
      {super.key,
      required this.imagePath,
      required this.onPressed,
      required this.nome,
      required this.location,
      required this.index,
      required this.maxindex});

  @override
  Widget build(BuildContext context) {
    double left_arrow = 0;
    double right_arrow = 0;
    if (index > 0) {
      left_arrow = 1;
    }
    if (maxindex != index + 1) {
      right_arrow = 1;
    }
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(2, 2)),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: BuscaForm()),
          Positioned(
              bottom: 40,
              right: 0,
              left: 32,
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    nome,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(location, style: TextStyle(color: Colors.white))
                ]),
                Container(
                  width: 40,
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.touch_app_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                )
              ])),
          Positioned(
              top: 0,
              bottom: 0,
              left: 10,
              child: Opacity(
                  opacity: left_arrow,
                  child: Icon(Icons.arrow_back_ios,
                      size: 40, color: Colors.white))),
          Positioned(
              top: 0,
              bottom: 0,
              right: 10,
              child: Opacity(
                  opacity: right_arrow,
                  child: Icon(Icons.arrow_forward_ios,
                      size: 40, color: Colors.white))),
        ],
      ),
    );
  }
}
