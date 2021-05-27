import 'package:dojo/episode/episode_bloc.dart';
import 'package:dojo/episode/episode_provider.dart';
import 'package:dojo/episode/episode_repository.dart';
import 'package:dojo/home/home_bloc.dart';
import 'package:dojo/home/home_screen.dart';
import 'package:dojo/show/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'episode/episode_state.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ShowBloc>(
          create: (BuildContext context) => ShowBloc(FindShowState(), ShowRepository(RestShowProvider())),
        ),
        BlocProvider<EpisodeBloc>(
          create: (BuildContext context) => EpisodeBloc(LoadingEpisodeState(), EpisodeRepository(RestEpisodeProvider())),
        ),
      ],
      child: ChildA(),
    );
  }
}

class EpisodeProvider {

}