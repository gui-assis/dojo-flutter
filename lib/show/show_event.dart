import 'package:meta/meta.dart';

@immutable
abstract class ShowEvent {

}

class UnShowEvent extends ShowEvent {}

class LoadShowEvent extends ShowEvent {}
