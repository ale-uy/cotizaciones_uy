import 'package:flutter/material.dart';

import 'model/api.dart';
import 'screens/home.dart';
import 'widgets/styles.dart';

void main() {
  runApp(
    MyApp(data: fetchPost()),
  );
}

class MyApp extends StatelessWidget {
  final Future data;

  MyApp({Key key, this.data}) : super(key: key);
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
