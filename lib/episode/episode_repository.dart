import 'dart:io';

import 'package:dojo/episode/index.dart';

class EpisodeRepository {
  final EpisodeProvider httpProvider;

  EpisodeRepository(this.httpProvider);

  Future<List<EpisodeModel>> getAsync(String episodeId) async {
    return httpProvider.loadAsync(episodeId);
  }
}