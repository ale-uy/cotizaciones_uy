import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle valuesStyle() => TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 5,
      backgroundColor: Colors.white,
    );

TextStyle refStyle() => TextStyle(
      color: Colors.black,
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
      backgroundColor: Colors.red,
    );

ThemeData themeApp() => ThemeData(
      primarySwatch: Colors.blue,
    );

Color back() => Colors.blue[900];

ButtonStyle button() => ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      elevation: 5.0,
      shadowColor: Colors.black,
      primary: Colors.white,
    );

ButtonStyle circles() => ElevatedButton.styleFrom(
      shape: CircleBorder(),
      elevation: 5.0,
      shadowColor: Colors.black,
    );
