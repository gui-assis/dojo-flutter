import 'dart:async';
import 'dart:developer' as developer;
import 'package:bloc/bloc.dart';
import 'package:dojo/episode/index.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {

  final EpisodeRepository showRepository;

  EpisodeBloc(EpisodeState initialState, this.showRepository) : super(initialState);

  void onNewShow(int showId) {
    this.add(LoadEpisodeEvent(showId));
  }

  @override
  Stream<EpisodeState> mapEventToState(EpisodeEvent event,) async* {
  }
}
