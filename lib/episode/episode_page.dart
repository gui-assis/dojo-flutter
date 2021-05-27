import 'package:flutter/material.dart';
import 'package:dojo/episode/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EpisodePage extends StatefulWidget {
  static const String routeName = '/episode';

  @override
  EpisodePageState createState() => EpisodePageState();
}

class EpisodePageState extends State<EpisodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Search episode'),
      ),
      body: EpisodeScreen(episodeBloc: BlocProvider.of(context)),
    );
  }
}