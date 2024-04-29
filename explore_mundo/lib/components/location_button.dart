import 'package:flutter/material.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({
    super.key,
    required this.icone,
    required this.texto,
    required this.onPressed,
  });

  final IconData icone;
  final String texto;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icone),
          onPressed: onPressed,
          iconSize: 40.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}