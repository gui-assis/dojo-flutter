import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dojo/show/index.dart';

class ShowScreen extends StatefulWidget {
  final ShowBloc _showBloc;
  const ShowScreen({Key? key, required ShowBloc showBloc})  : _showBloc = showBloc, super(key: key);
  
  @override
  ShowScreenState createState() {
    return ShowScreenState();
  }
}

class ShowScreenState extends State<ShowScreen> {
  ShowScreenState();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowBloc, ShowState>(
        builder: (
          BuildContext context,
          ShowState currentState,
        ) {
          if (currentState is LoadingShowState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorShowState) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(currentState.errorMessage),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: ElevatedButton(
                    child: Text('reload'),
                    onPressed: _load,
                  ),
                ),
              ],
            ));
          }

          return Center(
              child: CircularProgressIndicator(),
          );
          
        });
  }

  void _load() {
    widget._showBloc.add(LoadShowEvent());
  }
}
