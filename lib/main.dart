import 'package:dojo/show/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        lazy: true,
        create: (BuildContext context) => ShowBloc(LoadingShowState(), ShowRepository()),
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (BuildContext context) => ShowPage(),
          },
        ));
  }
}