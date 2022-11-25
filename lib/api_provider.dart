import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future fetchPost() async {
  var url = Uri.https(
      'https://cotizaciones-brou.herokuapp.com/api/currency', '/latest');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return convert.jsonDecode(response.body);
  } else {
    // Si esta respuesta no fue OK, lanza un error.
    throw Exception(response.request);
  }
}
