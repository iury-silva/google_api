import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LocationService {
  final String key = 'AIzaSyA_7sxfAu_tLoKHpJ4n2Ne6HCWOXtj0mBM';

  Future<String> getPlaceId(String input) async {
    final String url = 'https://ip-api.com/json/24.48.0.1';

    var response = await http.get(Uri.parse(url));

    var json = convert.jsonDecode(response.body);

    var ola = ['country'];

    print(ola);

  }
}
