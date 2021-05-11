import 'package:dojo/show/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ShowEvent {}

class LoadShowEvent extends ShowEvent {
  final String showId;

  LoadShowEvent(this.showId);
}

class ShowSearchEvent extends ShowEvent {

}