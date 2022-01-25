import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starterflutter/common/core/state/resource_state.dart';
import 'package:starterflutter/common/presentation/screen/responsive_screen.dart';
import 'package:starterflutter/common/presentation/screen/screen_state.dart';
import '../AppNavigator.dart';
import '../cubit/app_cubit.dart';

/*
  * Created by Ahmed Tawfik on 11/1/2022
*/
mixin AppStatelessScreen<BLOC extends AppCubit>
    implements StatelessWidget, ResponsiveScreen, ScreenState {
  late final BuildContext context;
  late final BLOC cubit;

  @override
  content();

  @override
  onInitState();

  @override
  onUpdateState(ResourceState state) {}

  @override
  Widget build(BuildContext context) {
    _setup(context);
    onInitState();

    return content();
  }

  void _setup(BuildContext context) {
    this.context = context;
    cubit = BlocProvider.of<BLOC>(context);
    setContext(context);
  }

  blocConsumer({required BlocWidgetBuilder<ResourceState> builder}) {
    return BlocConsumer<BLOC, ResourceState>(
        listener: (context, state) {
          _handleState(state);
          onUpdateState(state);
        },
        builder: builder);
  }

  void _handleState(ResourceState state) {
    //TODO: make your Stuff
  }

  navigate(Widget to) {
    AppNavigator().navigateByWidget(context, to);
  }
}
