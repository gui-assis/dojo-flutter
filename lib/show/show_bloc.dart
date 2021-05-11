import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:dojo/show/index.dart';

class ShowBloc extends Bloc<ShowEvent, ShowState> {

  final ShowRepository showRepository;

  ShowBloc(ShowState initialState, this.showRepository) : super(initialState);

  @override
  Stream<ShowState> mapEventToState(ShowEvent event,) async* {
    try {
      throw Exception(">>> Not implemented exception");
    } catch (_, stackTrace) {
      developer.log('$_', name: 'ShowBloc', error: _, stackTrace: stackTrace);
      yield ErrorShowState(_.toString());
    }
  }
}
