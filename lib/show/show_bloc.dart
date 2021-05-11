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
      if (event is LoadShowEvent) {
        yield LoadingShowState();
        Future.delayed(Duration(seconds: 3));
        ShowModel model = await showRepository.getAsync(event.showId);
        yield LoadedShowState(model);
      }

      if (event is ShowSearchEvent) {
        yield FindShowState();
      }
    } catch (_, stackTrace) {
      developer.log('$_', name: 'ShowBloc', error: _, stackTrace: stackTrace);
      yield ErrorShowState(_.toString());
    }
  }
}
