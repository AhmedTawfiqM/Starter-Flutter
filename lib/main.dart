import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starterflutter/app/AppStartUpFlow.dart';
import 'package:starterflutter/app/di/AppInjector.dart';

import 'app/app.dart';
import 'common/presentation/error_handler.dart';

void main() {
  App().setup();

  runZonedGuarded(() {
    runApp(const MyApp());
  }, (Object error, StackTrace stack) {
    getIt.get<AppErrorHandler>().onStackError(stack);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppInjector().blocs(),
      child: MaterialApp(
        title: 'Starter Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AppStartUpFlow.mainScreen(),
      ),
    );
  }
  ///if you want Bloc with Provider , replace MaterialApp with MultiProvider
  // child: MultiProvider(
  //         providers: AppInjector().providers(),
}
