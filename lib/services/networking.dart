import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    var apiaddress = Uri.parse(url);
    http.Response response = await http.get(apiaddress);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
