import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<dynamic>> get() async {
    var url = Uri.parse('https://equran.id/api/surat');
    var response = await http.get(url);
    return jsonDecode(response.body);
  }
}
