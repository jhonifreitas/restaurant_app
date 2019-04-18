import 'package:flutter/material.dart';
import 'package:restaurant_app/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurante',
      home: HomePage()
    );
  }
}
