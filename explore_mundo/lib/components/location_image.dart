import 'package:flutter/material.dart';

class LocationImage extends StatelessWidget {
    const LocationImage({
        super.key,
        required this.image,
    });

    final String image;

    @override
    Widget build(BuildContext context) {
        return Column(
                children: [
                    Image.asset(
                        image,
                        width: 600,
                        height:240,
                        fit: BoxFit.cover,

                        ),
                ],
        );
    }
}