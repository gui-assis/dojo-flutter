import 'dart:async';
import 'dart:convert';
import 'package:dojo/episode/index.dart';
import 'package:http/http.dart' as http;

abstract class EpisodeProvider {
  Future<List<EpisodeModel>> loadAsync(String episodeId);
}

class RestEpisodeProvider implements EpisodeProvider {
  Future<List<EpisodeModel>> loadAsync(String showId) async {

    final response = await http.get(Uri.https('api.tvmaze.com', 'shows/$showId/episodes'));

    if (response.statusCode == 200) {
      List<dynamic> episodesList = jsonDecode(response.body);
      return episodesList.map((e) => EpisodeModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load episode');
    }
  }
}