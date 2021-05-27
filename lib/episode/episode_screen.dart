import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dojo/episode/index.dart';

class EpisodeScreen extends StatefulWidget {
  final EpisodeBloc _episodeBloc;

  const EpisodeScreen({Key? key, required EpisodeBloc episodeBloc})
      : _episodeBloc = episodeBloc,
        super(key: key);

  @override
  EpisodeScreenState createState() {
    return EpisodeScreenState();
  }
}

class EpisodeScreenState extends State<EpisodeScreen> {
  EpisodeScreenState();

  @override
  void initState() {
    super.initState();
    widget._episodeBloc.add();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpisodeBloc, EpisodeState>(builder: (
      BuildContext context,
      EpisodeState currentState,
    ) {
      if (currentState is LoadingEpisodeState) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      if (currentState is ErrorEpisodeState) {
        return Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(currentState.errorMessage),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: ElevatedButton(
                child: Text('reload'),
                onPressed: () {
                  widget._episodeBloc.add(LoadEpisodeEvent(1));
                },
              ),
            ),
          ],
        ));
      }

      if (currentState is LoadedEpisodeState) {
        return Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              currentState.episodeModel.imageUrl,
              height: 150,
              width: 150,
            ),
            Text(currentState.episodeModel.name),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: ElevatedButton(
                child: Text('New Search'),
                onPressed: () {
                  widget._episodeBloc.add(LoadEpisodeEvent(1));
                },
              ),
            )
          ],
        ));
      }

      return Center(
        child: CircularProgressIndicator(),
      );
    });
  }

  void _load(int velho) {
    widget._episodeBloc.add(LoadEpisodeEvent(velho));
  }
}
