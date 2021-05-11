import 'package:dojo/show/index.dart';
import 'package:equatable/equatable.dart';

abstract class ShowState extends Equatable {

  final List<Object?> propss;
  ShowState(this.propss);

  @override
  List<Object?> get props => (propss);
}

class FindShowState extends ShowState {
  FindShowState() : super([]);
}

class LoadingShowState extends ShowState {
  LoadingShowState() : super([]);

  @override
  String toString() => 'LoadingShowState';
}

class LoadedShowState extends ShowState {
  final ShowModel showModel;

  LoadedShowState(this.showModel) : super([showModel]);

  @override
  String toString() => 'LoadedShowState $showModel';

}

class ErrorShowState extends ShowState {
  final String errorMessage;

  ErrorShowState(this.errorMessage): super([errorMessage]);
  
  @override
  String toString() => 'ErrorShowState';
}
