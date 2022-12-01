import 'dart:convert';

import 'package:http/http.dart' as http;

Future fetchPost() async {
  var url = Uri.https('brou-api.onrender.com', '/v2');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    // Si esta respuesta no fue OK, lanza un error.
    throw Exception(response.request);
  }
}
