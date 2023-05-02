import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future fetchPost() async {
  var url = Uri.https('subir_el_proyecto_brou_api_a_algun_server.poner_aqui_la_direccion.com', '/api_brou/v2');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return convert.jsonDecode(response.body);
  } else {
    // Si esta respuesta no fue OK, lanza un error.
    throw Exception(response.request);
  }
}
