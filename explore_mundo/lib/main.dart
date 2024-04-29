import 'package:flutter/material.dart';
import 'screens/location.dart';
import 'screens/home.dart';
import 'repositories/in_memory_database.dart';

void main() => runApp(const MyApp());

var database = InMemmoryDatabase();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        body: ListView(children: <Widget>[
          Home(),
        ]),
      ),
    );
  }
}
