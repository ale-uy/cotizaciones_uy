import 'package:flutter/material.dart';

import '../model/api.dart';

FutureBuilder cambio(String money, int type, Function estilo) => FutureBuilder(
      future: fetchPost(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final values = snapshot.data;

          if (money == 'Moneda') {
            return Text('Moneda', style: estilo());
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
