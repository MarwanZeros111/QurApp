import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:quran_app/web_servise/SurahModel.dart';

class ApiService {
//   ApiService(this._dio);

  Future<List<SurahModel>> get() async {
//     var response = await _dio.get('https://equran.id/api/surat');

//     List<SurahModel> surahList = (response.data as List)
//         .map((item) => SurahModel.fromJson(item))
//         .toList();

//     return surahList;
//   }
// }

    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    var url = Uri.https('https://equran.id/api/surat');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    var jsonResponse = convert.jsonDecode(response.body);
    print('Number of books about http: $jsonResponse.');
    return jsonResponse;
  }
}
