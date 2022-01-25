import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starterflutter/common/core/state/resource_state.dart';
import 'package:starterflutter/common/presentation/screen/responsive_screen.dart';
import 'package:starterflutter/common/presentation/screen/screen_state.dart';
import '../AppNavigator.dart';
import '../app_toast.dart';
import '../cubit/app_cubit.dart';

/*
  * Created by Ahmed Tawfik on 11/1/2022
*/
abstract class AppScreen<T extends StatefulWidget, BLOC extends AppCubit>
    extends State<T> with ResponsiveScreen implements ScreenState {
  late BLOC cubit;

  @override
  content();

  @override
  onInitState();

  @override
  onUpdateState(ResourceState state) {}

  @override
  void initState() {
    super.initState();
    _setup();

    onInitState();
  }

  @override
  Widget build(BuildContext context) {
    return content();
  }

  _setup() {
    cubit = BlocProvider.of<BLOC>(context);
    setContext(context);
  }

  blocConsumer({required BlocWidgetBuilder<ResourceState> builder}) {
    return BlocConsumer<BLOC, ResourceState>(listener: (context, state) {
      _handleState(state);
      onUpdateState(state);
    }, builder: builder);
  }

  void _handleState(ResourceState state) {
    if (state is ErrorResource) {
      showToast(state.exception.toString());
      log("error from AppScreen: ${state.exception}");
    }
  }

  navigate(Widget to) {
    AppNavigator().navigateByWidget(context, to);
  }
}
