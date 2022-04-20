import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/warnet_place.dart';

class ApiService {

  Future<WarnetResult> topHeadlines() async {
    final response = await http.get(Uri.parse('http://192.168.0.6/keperluanapi/index.php'));
    if (response.statusCode == 200) {
      return WarnetResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}