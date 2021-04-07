import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future fetchPost() async {
  var url = Uri.https('bubbadev.herokuapp.com', '/api_brou/v1');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return convert.jsonDecode(response.body);
  } else {
    // Si esta respuesta no fue OK, lanza un error.
    throw Exception(response.request);
  }
}
