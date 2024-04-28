import 'package:flutter/material.dart';
import 'screens/location.dart';
import 'repositories/inMemoryDatabase.dart';

void main() => runApp(
  const MyApp()
  );

var database = InMemmoryDatabase();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: <Widget>[
            Location()
          ]
        ),
      ),
    );
  } 
}