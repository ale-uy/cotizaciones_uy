import 'package:flutter/material.dart';
import 'package:cotizaciones_uy/home.dart';
import 'package:cotizaciones_uy/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cotizaciones UY',
      theme: themeApp(),
      home: MyHomePage(),
    );
  }
}
