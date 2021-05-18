import 'package:dojo/episode/episode_screen.dart';
import 'package:dojo/home/home_bloc.dart';
import 'package:dojo/show/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {

  final HomeBloc _homeBloc;
  const HomeScreen({Key? key, required HomeBloc homeBlock})  : _homeBloc = homeBlock, super(key: key);

  @override
  HomeScreenState createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShowScreen(showBloc: BlocProvider.of(context)),
        EpisodeScreen(episodeBloc: BlocProvider.of(context))
      ],
    );
  }
}