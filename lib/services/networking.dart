
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  final String URL;
  NetworkHelper(this.URL);

  Future getDate() async {
    var url = Uri.parse(URL);

    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      String data = response.body;
      return jsonDecode(data);
    }else{
      print(response.statusCode);
    }
  }
}