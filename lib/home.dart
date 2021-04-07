import 'package:flutter/material.dart';
import 'package:cotizaciones_uy/api_provider.dart';
import 'package:cotizaciones_uy/my_widgets.dart';

class MyHomePage extends StatefulWidget {
  final Future post;
  MyHomePage({Key key, this.post}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future post;
  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      scale: 0.5,
                      image: AssetImage("assets/images/back.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ref(),
                  filas('Dolar'),
                  filas('Euro'),
                  filas('Peso Argentino'),
                  filas('Real'),
                  filas('Guarani'),
                ],
              ),
            )));
  }
}
