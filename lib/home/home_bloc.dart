import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dojo/episode/episode_bloc.dart';
import 'package:dojo/show/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'HomeState.dart';

part 'home_event.dart';

class HomeBloc {
  final ShowBloc showBloc;
  final EpisodeBloc episodeBloc;

  HomeBloc(this.showBloc, this.episodeBloc) {
    this.showBloc.showId.stream.listen((int showId) => episodeBloc.onNewShow(showId));
  }
}
