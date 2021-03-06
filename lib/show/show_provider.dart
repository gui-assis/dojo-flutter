import 'dart:async';
import 'dart:convert';
import 'package:dojo/show/index.dart';
import 'package:http/http.dart' as http;

abstract class ShowProvider {
  Future<ShowModel> loadAsync(String showId);
}

class RestShowProvider implements ShowProvider {
  Future<ShowModel> loadAsync(String showId) async {
    final response = await http.get(Uri.https('api.tvmaze.com', 'shows/$showId'));

    if (response.statusCode == 200) {
      return ShowModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load show');
    }
  }
}