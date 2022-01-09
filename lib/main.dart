import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:starterflutter/app/AppStartUpFlow.dart';
import 'package:starterflutter/app/di/AppInjector.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appInjector = AppInjector();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: _appInjector.blocs(),
      child: MultiProvider(
        providers: _appInjector.providers(),
        child: MaterialApp(
          title: 'Starter Flutter',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: AppStartUpFlow.mainScreen(),
        ),
      ),
    );
  }
}
