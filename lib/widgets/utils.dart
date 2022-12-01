import 'package:flutter/material.dart';

import 'builder.dart';
import 'styles.dart';

Padding filas(String money) => Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          valueBack(money, 0, valuesStyle),
          ElevatedButton(
            style: circles(),
            onPressed: () {},
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/$money.png"),
              radius: 20.0,
            ),
          ),
          valueBack(money, 1, valuesStyle),
        ]));

Padding valueBack(String money, int type, Function estilo) => Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: cambio(money, type, estilo),
    ));

Row ref() =>
    Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
      valueBack('Moneda', 0, refStyle),
      SizedBox(width: 20),
      valueBack('Moneda', 1, refStyle),
    ]);
