import 'dart:io';

import 'package:dojo/show/index.dart';

class ShowRepository {
  final ShowProvider httpProvider;

  ShowRepository(this.httpProvider);

  Future<ShowModel> getAsync(String showId) async {
    return httpProvider.loadAsync(showId);
  }
}