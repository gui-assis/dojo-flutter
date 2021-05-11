import 'package:flutter/material.dart';
import 'package:dojo/show/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowPage extends StatefulWidget {
  static const String routeName = '/show';

  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show'),
      ),
      body: ShowScreen(showBloc: BlocProvider.of(context)),
    );
  }
}
