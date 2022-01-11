import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starterflutter/common/core/state/resource_state.dart';
import '../AppNavigator.dart';

abstract class AppScreenWidget<T extends StatefulWidget, BLOC extends Cubit>
    extends State<T> {
  late BLOC cubit;
  final _appNavigator = AppNavigator();

  onInitState();

  @override
  void initState() {
    super.initState();
    _createBloc();

    onInitState();
  }

  _createBloc() {
    cubit = BlocProvider.of<BLOC>(context);
  }

  navigate(Widget to) {
    _appNavigator.navigateByWidget(context, to);
  }

  //TODO:: add BlocConsumer
  onUpdateState(ResourceState state) {
    if (state is ErrorResource) {}
  }

}
