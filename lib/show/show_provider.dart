import 'dart:async';
import 'dart:convert';
import 'package:dojo/show/index.dart';
import 'package:http/http.dart' as http;

abstract class ShowProvider {
  Future<ShowModel> loadAsync(String showId);
}

class RestShowProvider implements ShowProvider {
  Future<ShowModel> loadAsync(String showId) async {
    throw Exception(">>> Not implemented exception");
  }
}