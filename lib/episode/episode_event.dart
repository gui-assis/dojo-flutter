import 'package:dojo/episode/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class EpisodeEvent {}

class LoadEpisodeEvent extends EpisodeEvent {
  final int showId;

  LoadEpisodeEvent(this.showId);
}