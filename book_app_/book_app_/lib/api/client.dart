import 'dart:convert';
import 'package:bookapp/models/search_result.dart';
import 'package:http/http.dart' as http;
import 'package:bookapp/utils/constants.dart';

class ApiClient {
  final String baseUrl;

  ApiClient({
    this.baseUrl = Constants.BASE_URL
  });

  Future<SearchResult> fetchSearchResults(String term) async {
    final uri = Uri.parse("${baseUrl}search.json?q=$term");
    final response = await http.get(uri);

    return SearchResult.fromJson(json.decode(response.body));
  }

}