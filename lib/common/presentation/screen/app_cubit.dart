import 'package:bloc/bloc.dart';
import 'package:starterflutter/common/core/state/resource_state.dart';

class AppCubit extends Cubit<ResourceState>{
  AppCubit(ResourceState initialState) : super(initialState);
}