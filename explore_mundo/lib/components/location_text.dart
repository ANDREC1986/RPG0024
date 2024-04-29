import 'package:flutter/material.dart';

class LocationText extends StatelessWidget {
    
    const LocationText({
        super.key,
        required this.description,
    });

    final String description;

    @override
    Widget build(BuildContext context) {
        return Container(
            padding: const EdgeInsets.all(32),
            child: Text(description,
            softWrap:true,
            ),
        );
    }
}