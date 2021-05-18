import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {

  final List<Object?> propss;
  HomeState(this.propss);

  @override
  List<Object?> get props => (propss);
}

class LoadingHomeState extends HomeState {
  LoadingHomeState() : super([]);

  @override
  String toString() => 'LoadingHomeState';
}