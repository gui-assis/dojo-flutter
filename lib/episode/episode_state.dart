import 'package:dojo/episode/index.dart';
import 'package:equatable/equatable.dart';

abstract class EpisodeState extends Equatable {

  final List<Object?> propss;
  EpisodeState(this.propss);

  @override
  List<Object?> get props => (propss);
}

class LoadingEpisodeState extends EpisodeState {
  LoadingEpisodeState() : super([]);

  @override
  String toString() => 'LoadingEpisodeState';
}

class LoadedEpisodeState extends EpisodeState {
  final EpisodeModel episodeModel;

  LoadedEpisodeState(this.episodeModel) : super([episodeModel]);

  @override
  String toString() => 'LoadedEpisodeState $episodeModel';

}

class ErrorEpisodeState extends EpisodeState {
  final String errorMessage;

  ErrorEpisodeState(this.errorMessage): super([errorMessage]);
  
  @override
  String toString() => 'ErrorepisodeState';
}
