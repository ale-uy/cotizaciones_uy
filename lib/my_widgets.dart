import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cotizaciones_uy/api_provider.dart';
import 'package:cotizaciones_uy/styles.dart';

Row ref() =>
    Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
      valueBack('Moneda', 0, refStyle),
      SizedBox(width: 20),
      valueBack('Moneda', 1, refStyle),
    ]);

FutureBuilder cambio(String money, int type, Function estilo) => FutureBuilder(
      future: fetchPost(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final values = snapshot.data;
          if (money == 'Guarani') {
            return Text('${(values[money][type]).toStringAsFixed(4)}',
                style: estilo());
          } else if (money == 'Moneda') {
            return Text('${(values[money][type]).toString()}', style: estilo());
          } else {
            return Text('${(values[money][type]).toStringAsFixed(2)}',
                style: estilo());
          }
        } else if (snapshot.hasError) {
          return Text("${(snapshot.error).toString()}");
        }
        return CircularProgressIndicator();
      },
    );

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
