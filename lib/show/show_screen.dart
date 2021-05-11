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
    widget._showBloc.add(ShowSearchEvent());
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
                    onPressed: () { widget._showBloc.add(ShowSearchEvent()); },
                  ),
                ),
              ],
            ));
          }

          if (currentState is LoadedShowState) {
            return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      currentState.showModel.imageUrl, 
                      height: 150,
                      width: 150,),
                    Text(currentState.showModel.name),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: ElevatedButton(
                    
                      child: Text('New Search'),
                      onPressed: () { widget._showBloc.add(ShowSearchEvent()); },
                    ),
                )
              ],
            ));
          }

          if (currentState is FindShowState) {
            return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Show Id"),
                    Padding(
                      padding: const EdgeInsets.only(left: 32, right: 32),
                      child: TextField(
                      onSubmitted: (String value) async { 
                         _load(value);
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

  void _load(String velho) {
    widget._showBloc.add(LoadShowEvent(velho));
  }
}
